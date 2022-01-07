
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
typedef int svn_boolean_t ;
struct filter_tree_baton_t {TYPE_2__* processor; int changelist_hash; int wc_ctx; int root_local_abspath; } ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* file_opened ) (void**,int *,char const*,int const*,int const*,int const*,void*,TYPE_2__*,int *,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int stub1 (void**,int *,char const*,int const*,int const*,int const*,void*,TYPE_2__*,int *,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_wc__changelist_match (int ,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
filter_file_opened(void **new_file_baton,
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
  struct filter_tree_baton_t *fb = processor->baton;
  const char *local_abspath
    = svn_dirent_join(fb->root_local_abspath, relpath, scratch_pool);


  if (! svn_wc__changelist_match(fb->wc_ctx, local_abspath,
                                 fb->changelist_hash, scratch_pool))
    {
      *skip = TRUE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(fb->processor->file_opened(new_file_baton,
                                     skip,
                                     relpath,
                                     left_source,
                                     right_source,
                                     copyfrom_source,
                                     dir_baton,
                                     fb->processor,
                                     result_pool,
                                     scratch_pool));
  return SVN_NO_ERROR;
}
