
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_18__ {int fs; } ;
typedef TYPE_1__ svn_fs_root_t ;
typedef int svn_fs_id_t ;
struct TYPE_19__ {int member_1; int member_0; } ;
typedef TYPE_2__ svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_20__ {int copy_inherit; int * node; int entry; struct TYPE_20__* parent; } ;
typedef TYPE_3__ parent_path_t ;
typedef int dag_node_t ;
typedef int copy_id_inherit_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;




 int * dag_node_cache_set (TYPE_1__*,char*,int *,int *) ;
 int * get_dag (int **,TYPE_1__*,char const*,int *) ;
 int * mutable_root_node (int **,TYPE_1__*,char const*,int *) ;
 char* parent_path_path (TYPE_3__*,int *) ;
 TYPE_2__* root_txn_id (TYPE_1__*) ;
 scalar_t__ svn_fs_fs__dag_check_mutable (int *) ;
 int * svn_fs_fs__dag_clone_child (int **,int *,char const*,int ,TYPE_2__*,TYPE_2__ const*,int ,int *) ;
 int * svn_fs_fs__dag_get_copyroot (int *,char const**,int *) ;
 int * svn_fs_fs__dag_get_id (int *) ;
 TYPE_2__* svn_fs_fs__id_copy_id (int const*) ;
 int svn_fs_fs__id_node_id (int const*) ;
 int svn_fs_fs__id_part_eq (int ,int ) ;
 int * svn_fs_fs__reserve_copy_id (TYPE_2__*,int ,TYPE_2__ const*,int *) ;
 int * svn_fs_fs__revision_root (TYPE_1__**,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
make_path_mutable(svn_fs_root_t *root,
                  parent_path_t *parent_path,
                  const char *error_path,
                  apr_pool_t *pool)
{
  dag_node_t *clone;
  const svn_fs_fs__id_part_t *txn_id = root_txn_id(root);


  if (svn_fs_fs__dag_check_mutable(parent_path->node))
    return SVN_NO_ERROR;


  if (parent_path->parent)
    {
      const svn_fs_id_t *parent_id, *child_id, *copyroot_id;
      svn_fs_fs__id_part_t copy_id = { SVN_INVALID_REVNUM, 0 };
      svn_fs_fs__id_part_t *copy_id_ptr = &copy_id;
      copy_id_inherit_t inherit = parent_path->copy_inherit;
      const char *clone_path, *copyroot_path;
      svn_revnum_t copyroot_rev;
      svn_boolean_t is_parent_copyroot = FALSE;
      svn_fs_root_t *copyroot_root;
      dag_node_t *copyroot_node;



      SVN_ERR(make_path_mutable(root, parent_path->parent,
                                error_path, pool));

      switch (inherit)
        {
        case 130:
          parent_id = svn_fs_fs__dag_get_id(parent_path->parent->node);
          copy_id = *svn_fs_fs__id_copy_id(parent_id);
          break;

        case 131:
          SVN_ERR(svn_fs_fs__reserve_copy_id(&copy_id, root->fs, txn_id,
                                             pool));
          break;

        case 129:
          copy_id_ptr = ((void*)0);
          break;

        case 128:
        default:
          SVN_ERR_MALFUNCTION();

        }


      SVN_ERR(svn_fs_fs__dag_get_copyroot(&copyroot_rev, &copyroot_path,
                                          parent_path->node));
      SVN_ERR(svn_fs_fs__revision_root(&copyroot_root, root->fs,
                                       copyroot_rev, pool));
      SVN_ERR(get_dag(&copyroot_node, copyroot_root, copyroot_path, pool));

      child_id = svn_fs_fs__dag_get_id(parent_path->node);
      copyroot_id = svn_fs_fs__dag_get_id(copyroot_node);
      if (!svn_fs_fs__id_part_eq(svn_fs_fs__id_node_id(child_id),
                                 svn_fs_fs__id_node_id(copyroot_id)))
        is_parent_copyroot = TRUE;


      clone_path = parent_path_path(parent_path->parent, pool);
      SVN_ERR(svn_fs_fs__dag_clone_child(&clone,
                                         parent_path->parent->node,
                                         clone_path,
                                         parent_path->entry,
                                         copy_id_ptr, txn_id,
                                         is_parent_copyroot,
                                         pool));


      SVN_ERR(dag_node_cache_set(root, parent_path_path(parent_path, pool),
                                 clone, pool));
    }
  else
    {

      SVN_ERR(mutable_root_node(&clone, root, error_path, pool));
    }


  parent_path->node = clone;

  return SVN_NO_ERROR;
}
