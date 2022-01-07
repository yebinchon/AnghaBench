
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int * svn_error_createf (int ,int *,char*) ;
 int svn_fs_fs__dag_check_mutable (int *) ;
 int svn_fs_fs__dag_get_node (int **,int *,int const*,int *) ;
 int * svn_fs_fs__delete_node_revision (int *,int const*,int *) ;

svn_error_t *
svn_fs_fs__dag_remove_node(svn_fs_t *fs,
                           const svn_fs_id_t *id,
                           apr_pool_t *pool)
{
  dag_node_t *node;


  SVN_ERR(svn_fs_fs__dag_get_node(&node, fs, id, pool));


  if (! svn_fs_fs__dag_check_mutable(node))
    return svn_error_createf(SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
                             "Attempted removal of immutable node");


  return svn_fs_fs__delete_node_revision(fs, id, pool);
}
