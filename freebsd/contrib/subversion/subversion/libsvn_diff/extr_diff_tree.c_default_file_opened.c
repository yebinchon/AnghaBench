
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
default_file_opened(void **new_file_baton,
                    svn_boolean_t *skip,
                    const char *relpath,
                    const svn_diff_source_t *left_source,
                    const svn_diff_source_t *right_source,
                    const svn_diff_source_t *copyfrom_source,
                    void *dir_baton,
                    const svn_diff_tree_processor_t *processor,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  *new_file_baton = dir_baton;
  return SVN_NO_ERROR;
}
