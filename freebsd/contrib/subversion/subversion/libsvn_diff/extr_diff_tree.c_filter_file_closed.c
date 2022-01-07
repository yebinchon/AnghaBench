
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {struct filter_tree_baton_t* baton; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_diff_source_t ;
struct filter_tree_baton_t {TYPE_2__* processor; int prefix_relpath; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* file_closed ) (char const*,int const*,int const*,void*,TYPE_2__*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int assert (int ) ;
 int stub1 (char const*,int const*,int const*,void*,TYPE_2__*,int *) ;
 char* svn_relpath_skip_ancestor (int ,char const*) ;

__attribute__((used)) static svn_error_t *
filter_file_closed(const char *relpath,
                   const svn_diff_source_t *left_source,
                   const svn_diff_source_t *right_source,
                   void *file_baton,
                   const svn_diff_tree_processor_t *processor,
                   apr_pool_t *scratch_pool)
{
  struct filter_tree_baton_t *fb = processor->baton;

  relpath = svn_relpath_skip_ancestor(fb->prefix_relpath, relpath);
  assert(relpath != ((void*)0));

  SVN_ERR(fb->processor->file_closed(relpath,
                                     left_source,
                                     right_source,
                                     file_baton,
                                     fb->processor,
                                     scratch_pool));

  return SVN_NO_ERROR;
}
