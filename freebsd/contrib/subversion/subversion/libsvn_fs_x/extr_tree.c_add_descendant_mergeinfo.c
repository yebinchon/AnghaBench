
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_root_t ;
typedef int svn_fs_mergeinfo_receiver_t ;
typedef int svn_error_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int crawl_directory_dag_for_mergeinfo (int *,char const*,int *,int ,void*,int *) ;
 scalar_t__ svn_fs_x__dag_has_descendants_with_mergeinfo (int *) ;
 int svn_fs_x__get_temp_dag_node (int **,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
add_descendant_mergeinfo(svn_fs_root_t *root,
                         const char *path,
                         svn_fs_mergeinfo_receiver_t receiver,
                         void *baton,
                         apr_pool_t *scratch_pool)
{
  dag_node_t *this_dag;

  SVN_ERR(svn_fs_x__get_temp_dag_node(&this_dag, root, path, scratch_pool));
  if (svn_fs_x__dag_has_descendants_with_mergeinfo(this_dag))
    SVN_ERR(crawl_directory_dag_for_mergeinfo(root,
                                              path,
                                              this_dag,
                                              receiver,
                                              baton,
                                              scratch_pool));
  return SVN_NO_ERROR;
}
