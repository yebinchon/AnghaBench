
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
struct TYPE_7__ {char* txn; int * fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_8__ {char* copy_src_path; int copy_inherit; int * node; int entry; struct TYPE_8__* parent; } ;
typedef TYPE_2__ parent_path_t ;
typedef int dag_node_t ;
typedef int copy_id_inherit_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int *) ;
 int SVN_ERR_MALFUNCTION () ;
 int * SVN_NO_ERROR ;




 int copy_kind_soft ;
 int * mutable_root_node (int **,TYPE_1__*,char const*,int *,int *) ;
 char* parent_path_path (TYPE_2__*,int *) ;
 int * svn_fs_base__add_txn_copy (int *,char const*,char const*,int *,int *) ;
 scalar_t__ svn_fs_base__dag_check_mutable (int *,char const*) ;
 int * svn_fs_base__dag_clone_child (int **,int *,char const*,int ,char const*,char const*,int *,int *) ;
 int * svn_fs_base__dag_get_id (int *) ;
 char* svn_fs_base__id_copy_id (int const*) ;
 int svn_fs_base__id_txn_id (int const*) ;
 int * svn_fs_bdb__create_copy (int *,char const*,char const*,int ,int const*,int ,int *,int *) ;
 int * svn_fs_bdb__reserve_copy_id (char const**,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
make_path_mutable(svn_fs_root_t *root,
                  parent_path_t *parent_path,
                  const char *error_path,
                  trail_t *trail,
                  apr_pool_t *pool)
{
  dag_node_t *cloned_node;
  const char *txn_id = root->txn;
  svn_fs_t *fs = root->fs;


  if (svn_fs_base__dag_check_mutable(parent_path->node, txn_id))
    return SVN_NO_ERROR;


  if (parent_path->parent)
    {
      const svn_fs_id_t *parent_id;
      const svn_fs_id_t *node_id = svn_fs_base__dag_get_id(parent_path->node);
      const char *copy_id = ((void*)0);
      const char *copy_src_path = parent_path->copy_src_path;
      copy_id_inherit_t inherit = parent_path->copy_inherit;
      const char *clone_path;



      SVN_ERR(make_path_mutable(root, parent_path->parent,
                                error_path, trail, pool));

      switch (inherit)
        {
        case 130:
          parent_id = svn_fs_base__dag_get_id(parent_path->parent->node);
          copy_id = svn_fs_base__id_copy_id(parent_id);
          break;

        case 131:
          SVN_ERR(svn_fs_bdb__reserve_copy_id(&copy_id, fs, trail, pool));
          break;

        case 129:
          copy_id = ((void*)0);
          break;

        case 128:
        default:
          SVN_ERR_MALFUNCTION();

        }


      clone_path = parent_path_path(parent_path->parent, pool);
      SVN_ERR(svn_fs_base__dag_clone_child(&cloned_node,
                                           parent_path->parent->node,
                                           clone_path,
                                           parent_path->entry,
                                           copy_id, txn_id,
                                           trail, pool));





      if (inherit == 131)
        {
          const svn_fs_id_t *new_node_id =
            svn_fs_base__dag_get_id(cloned_node);
          SVN_ERR(svn_fs_bdb__create_copy(fs, copy_id, copy_src_path,
                                          svn_fs_base__id_txn_id(node_id),
                                          new_node_id,
                                          copy_kind_soft, trail, pool));
          SVN_ERR(svn_fs_base__add_txn_copy(fs, txn_id, copy_id,
                                            trail, pool));
        }
    }
  else
    {

      SVN_ERR(mutable_root_node(&cloned_node, root, error_path, trail, pool));
    }


  parent_path->node = cloned_node;

  return SVN_NO_ERROR;
}
