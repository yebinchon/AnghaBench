
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int * node; TYPE_1__* parent; } ;
typedef TYPE_2__ parent_path_t ;
typedef int dag_node_t ;
typedef int copy_id_inherit_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int * node; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int copy_id_inherit_new ;
 int copy_id_inherit_parent ;
 int copy_id_inherit_self ;
 int get_dag (int **,int *,char const*,int *) ;
 int parent_path_path (TYPE_2__*,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_fs_fs__dag_get_copyroot (int *,char const**,int *) ;
 char* svn_fs_fs__dag_get_created_path (int *) ;
 int * svn_fs_fs__dag_get_id (int *) ;
 scalar_t__ svn_fs_fs__id_compare (int const*,int const*) ;
 int * svn_fs_fs__id_copy_id (int const*) ;
 scalar_t__ svn_fs_fs__id_is_txn (int const*) ;
 scalar_t__ svn_fs_fs__id_part_eq (int const*,int const*) ;
 scalar_t__ svn_fs_fs__id_part_is_root (int const*) ;
 int svn_fs_fs__revision_root (int **,int *,int ,int *) ;
 scalar_t__ svn_fs_node_unrelated ;

__attribute__((used)) static svn_error_t *
get_copy_inheritance(copy_id_inherit_t *inherit_p,
                     const char **copy_src_path,
                     svn_fs_t *fs,
                     parent_path_t *child,
                     apr_pool_t *pool)
{
  const svn_fs_id_t *child_id, *parent_id, *copyroot_id;
  const svn_fs_fs__id_part_t *child_copy_id, *parent_copy_id;
  const char *id_path = ((void*)0);
  svn_fs_root_t *copyroot_root;
  dag_node_t *copyroot_node;
  svn_revnum_t copyroot_rev;
  const char *copyroot_path;

  SVN_ERR_ASSERT(child && child->parent);


  child_id = svn_fs_fs__dag_get_id(child->node);
  parent_id = svn_fs_fs__dag_get_id(child->parent->node);
  child_copy_id = svn_fs_fs__id_copy_id(child_id);
  parent_copy_id = svn_fs_fs__id_copy_id(parent_id);


  if (svn_fs_fs__id_is_txn(child_id))
    {
      *inherit_p = copy_id_inherit_self;
      *copy_src_path = ((void*)0);
      return SVN_NO_ERROR;
    }



  *inherit_p = copy_id_inherit_parent;
  *copy_src_path = ((void*)0);



  if (svn_fs_fs__id_part_is_root(child_copy_id))
    return SVN_NO_ERROR;





  if (svn_fs_fs__id_part_eq(child_copy_id, parent_copy_id))
    return SVN_NO_ERROR;
  SVN_ERR(svn_fs_fs__dag_get_copyroot(&copyroot_rev, &copyroot_path,
                                      child->node));
  SVN_ERR(svn_fs_fs__revision_root(&copyroot_root, fs, copyroot_rev, pool));
  SVN_ERR(get_dag(&copyroot_node, copyroot_root, copyroot_path, pool));
  copyroot_id = svn_fs_fs__dag_get_id(copyroot_node);

  if (svn_fs_fs__id_compare(copyroot_id, child_id) == svn_fs_node_unrelated)
    return SVN_NO_ERROR;



  id_path = svn_fs_fs__dag_get_created_path(child->node);
  if (strcmp(id_path, parent_path_path(child, pool)) == 0)
    {
      *inherit_p = copy_id_inherit_self;
      return SVN_NO_ERROR;
    }




  *inherit_p = copy_id_inherit_new;
  *copy_src_path = id_path;
  return SVN_NO_ERROR;
}
