
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_diff_source_t ;
struct svn_diff_tree_processor_t {struct filter_tree_baton_t* baton; } ;
struct filter_tree_baton_t {TYPE_1__* processor; int prefix_relpath; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {int (* dir_changed ) (char const*,int const*,int const*,int *,int *,int const*,void*,TYPE_1__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int ) ;
 int stub1 (char const*,int const*,int const*,int *,int *,int const*,void*,TYPE_1__*,int *) ;
 char* svn_relpath_skip_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
filter_dir_changed(const char *relpath,
                   const svn_diff_source_t *left_source,
                   const svn_diff_source_t *right_source,
                             apr_hash_t *left_props,
                             apr_hash_t *right_props,
                   const apr_array_header_t *prop_changes,
                   void *dir_baton,
                   const struct svn_diff_tree_processor_t *processor,
                   apr_pool_t *scratch_pool)
{
  struct filter_tree_baton_t *fb = processor->baton;

  relpath = svn_relpath_skip_ancestor(fb->prefix_relpath, relpath);
  assert(relpath != ((void*)0));

  SVN_ERR(fb->processor->dir_changed(relpath,
                                     left_source,
                                     right_source,
                                     left_props,
                                     right_props,
                                     prop_changes,
                                     dir_baton,
                                     fb->processor,
                                     scratch_pool));
  return SVN_NO_ERROR;
}
