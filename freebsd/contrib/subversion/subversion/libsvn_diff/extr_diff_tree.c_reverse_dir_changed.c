
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct reverse_tree_baton_t* baton; } ;
struct reverse_tree_baton_t {TYPE_1__* processor; scalar_t__ prefix_relpath; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {int (* dir_changed ) (char const*,int const*,int const*,int *,int *,int *,void*,TYPE_1__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int stub1 (char const*,int const*,int const*,int *,int *,int *,void*,TYPE_1__*,int *) ;
 int svn_prop_diffs (int **,int *,int *,int *) ;
 char* svn_relpath_join (scalar_t__,char const*,int *) ;

__attribute__((used)) static svn_error_t *
reverse_dir_changed(const char *relpath,
                    const svn_diff_source_t *left_source,
                    const svn_diff_source_t *right_source,
                              apr_hash_t *left_props,
                              apr_hash_t *right_props,
                    const apr_array_header_t *prop_changes,
                    void *dir_baton,
                    const struct svn_diff_tree_processor_t *processor,
                    apr_pool_t *scratch_pool)
{
  struct reverse_tree_baton_t *rb = processor->baton;
  apr_array_header_t *reversed_prop_changes = ((void*)0);

  if (rb->prefix_relpath)
    relpath = svn_relpath_join(rb->prefix_relpath, relpath, scratch_pool);

  if (prop_changes)
    {
      SVN_ERR_ASSERT(left_props != ((void*)0) && right_props != ((void*)0));
      SVN_ERR(svn_prop_diffs(&reversed_prop_changes, left_props, right_props,
                             scratch_pool));
    }

  SVN_ERR(rb->processor->dir_changed(relpath,
                                     right_source,
                                     left_source,
                                     right_props,
                                     left_props,
                                     reversed_prop_changes,
                                     dir_baton,
                                     rb->processor,
                                     scratch_pool));
  return SVN_NO_ERROR;
}
