
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct svn_diff_tree_processor_t {int (* dir_closed ) (char const*,int const*,int const*,void*,struct svn_diff_tree_processor_t const*,int *) ;} ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,int const*,void*,struct svn_diff_tree_processor_t const*,int *) ;

__attribute__((used)) static svn_error_t *
default_dir_changed(const char *relpath,
                    const svn_diff_source_t *left_source,
                    const svn_diff_source_t *right_source,
                              apr_hash_t *left_props,
                              apr_hash_t *right_props,
                    const apr_array_header_t *prop_changes,
                    void *dir_baton,
                    const struct svn_diff_tree_processor_t *processor,
                    apr_pool_t *scratch_pool)
{
  SVN_ERR(processor->dir_closed(relpath,
                                left_source, right_source,
                                dir_baton,
                                processor, scratch_pool));
  return SVN_NO_ERROR;
}
