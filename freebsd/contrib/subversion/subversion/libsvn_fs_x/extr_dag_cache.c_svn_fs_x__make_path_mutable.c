
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__txn_id_t ;
struct TYPE_14__ {int member_1; int member_0; } ;
typedef TYPE_1__ svn_fs_x__id_t ;
struct TYPE_15__ {int copy_inherit; int * node; int entry; struct TYPE_15__* parent; } ;
typedef TYPE_2__ svn_fs_x__dag_path_t ;
typedef int svn_fs_x__copy_id_inherit_t ;
struct TYPE_16__ {int fs; } ;
typedef TYPE_3__ svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_MALFUNCTION () ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * mutable_root_node (int **,TYPE_3__*,char const*,int *,int *) ;
 char* parent_path_path (TYPE_2__*,int *) ;




 scalar_t__ svn_fs_x__dag_check_mutable (int *) ;
 int * svn_fs_x__dag_clone_child (int **,int *,char const*,int ,TYPE_1__*,int ,int ,int *,int *) ;
 TYPE_1__* svn_fs_x__dag_get_copy_id (int *) ;
 int svn_fs_x__dag_get_copyroot (int *,char const**,int *) ;
 int svn_fs_x__dag_related_node (int *,int *) ;
 int * svn_fs_x__get_temp_dag_node (int **,TYPE_3__*,char const*,int *) ;
 int * svn_fs_x__reserve_copy_id (TYPE_1__*,int ,int ,int *) ;
 int * svn_fs_x__revision_root (TYPE_3__**,int ,int ,int *) ;
 int svn_fs_x__root_txn_id (TYPE_3__*) ;
 int svn_fs_x__update_dag_cache (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_x__make_path_mutable(svn_fs_root_t *root,
                            svn_fs_x__dag_path_t *parent_path,
                            const char *error_path,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  dag_node_t *clone;
  svn_fs_x__txn_id_t txn_id = svn_fs_x__root_txn_id(root);


  if (svn_fs_x__dag_check_mutable(parent_path->node))
    return SVN_NO_ERROR;


  if (parent_path->parent)
    {
      svn_fs_x__id_t copy_id = { SVN_INVALID_REVNUM, 0 };
      svn_fs_x__id_t *copy_id_ptr = &copy_id;
      svn_fs_x__copy_id_inherit_t inherit = parent_path->copy_inherit;
      const char *clone_path, *copyroot_path;
      svn_revnum_t copyroot_rev;
      svn_boolean_t is_parent_copyroot = FALSE;
      svn_fs_root_t *copyroot_root;
      dag_node_t *copyroot_node;
      apr_pool_t *subpool;



      SVN_ERR(svn_fs_x__make_path_mutable(root, parent_path->parent,
                                          error_path, result_pool,
                                          scratch_pool));




      subpool = svn_pool_create(scratch_pool);
      switch (inherit)
        {
        case 130:
          copy_id = *svn_fs_x__dag_get_copy_id(parent_path->parent->node);
          break;

        case 131:
          SVN_ERR(svn_fs_x__reserve_copy_id(&copy_id, root->fs, txn_id,
                                            subpool));
          break;

        case 129:
          copy_id_ptr = ((void*)0);
          break;

        case 128:
        default:
          SVN_ERR_MALFUNCTION();

        }


      svn_fs_x__dag_get_copyroot(&copyroot_rev, &copyroot_path,
                                 parent_path->node);
      SVN_ERR(svn_fs_x__revision_root(&copyroot_root, root->fs,
                                      copyroot_rev, subpool));
      SVN_ERR(svn_fs_x__get_temp_dag_node(&copyroot_node, copyroot_root,
                                          copyroot_path, subpool));

      if (!svn_fs_x__dag_related_node(copyroot_node, parent_path->node))
        is_parent_copyroot = TRUE;


      clone_path = parent_path_path(parent_path->parent, subpool);
      SVN_ERR(svn_fs_x__dag_clone_child(&clone,
                                        parent_path->parent->node,
                                        clone_path,
                                        parent_path->entry,
                                        copy_id_ptr, txn_id,
                                        is_parent_copyroot,
                                        result_pool,
                                        subpool));


      svn_fs_x__update_dag_cache(clone);
      svn_pool_destroy(subpool);
    }
  else
    {

      SVN_ERR(mutable_root_node(&clone, root, error_path, result_pool,
                                scratch_pool));
    }


  parent_path->node = clone;

  return SVN_NO_ERROR;
}
