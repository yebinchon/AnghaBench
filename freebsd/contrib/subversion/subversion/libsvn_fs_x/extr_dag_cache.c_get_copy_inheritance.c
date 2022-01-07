
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_6__ {int node; TYPE_1__* parent; } ;
typedef TYPE_2__ svn_fs_x__dag_path_t ;
typedef int svn_fs_x__copy_id_inherit_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int node; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int parent_path_path (TYPE_2__*,int *) ;
 scalar_t__ strcmp (char const*,int ) ;
 int svn_fs_x__copy_id_inherit_new ;
 int svn_fs_x__copy_id_inherit_parent ;
 int svn_fs_x__copy_id_inherit_self ;
 scalar_t__ svn_fs_x__dag_check_mutable (int ) ;
 int * svn_fs_x__dag_get_copy_id (int ) ;
 int svn_fs_x__dag_get_copyroot (int *,char const**,int ) ;
 char* svn_fs_x__dag_get_created_path (int ) ;
 int svn_fs_x__dag_related_node (int *,int ) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;
 scalar_t__ svn_fs_x__id_eq (int *,int *) ;
 scalar_t__ svn_fs_x__id_is_root (int *) ;
 int svn_fs_x__revision_root (int **,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
get_copy_inheritance(svn_fs_x__copy_id_inherit_t *inherit_p,
                     const char **copy_src_path,
                     svn_fs_t *fs,
                     svn_fs_x__dag_path_t *child,
                     apr_pool_t *scratch_pool)
{
  svn_fs_x__id_t child_copy_id, parent_copy_id;
  const char *id_path = ((void*)0);
  svn_fs_root_t *copyroot_root;
  dag_node_t *copyroot_node;
  svn_revnum_t copyroot_rev;
  const char *copyroot_path;

  SVN_ERR_ASSERT(child && child->parent);


  child_copy_id = *svn_fs_x__dag_get_copy_id(child->node);
  parent_copy_id = *svn_fs_x__dag_get_copy_id(child->parent->node);


  *copy_src_path = ((void*)0);


  if (svn_fs_x__dag_check_mutable(child->node))
    {
      *inherit_p = svn_fs_x__copy_id_inherit_self;
      return SVN_NO_ERROR;
    }



  *inherit_p = svn_fs_x__copy_id_inherit_parent;



  if (svn_fs_x__id_is_root(&child_copy_id))
    return SVN_NO_ERROR;





  if (svn_fs_x__id_eq(&child_copy_id, &parent_copy_id))
    return SVN_NO_ERROR;
  svn_fs_x__dag_get_copyroot(&copyroot_rev, &copyroot_path, child->node);
  SVN_ERR(svn_fs_x__revision_root(&copyroot_root, fs, copyroot_rev,
                                  scratch_pool));
  SVN_ERR(svn_fs_x__get_temp_dag_node(&copyroot_node, copyroot_root,
                                      copyroot_path, scratch_pool));

  if (!svn_fs_x__dag_related_node(copyroot_node, child->node))
    return SVN_NO_ERROR;



  id_path = svn_fs_x__dag_get_created_path(child->node);
  if (strcmp(id_path, parent_path_path(child, scratch_pool)) == 0)
    {
      *inherit_p = svn_fs_x__copy_id_inherit_self;
      return SVN_NO_ERROR;
    }




  *inherit_p = svn_fs_x__copy_id_inherit_new;
  *copy_src_path = id_path;
  return SVN_NO_ERROR;
}
