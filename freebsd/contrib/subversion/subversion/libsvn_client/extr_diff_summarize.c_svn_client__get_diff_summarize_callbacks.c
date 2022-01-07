
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int dir_added; int dir_deleted; int dir_changed; int dir_opened; int file_changed; int file_deleted; int file_added; } ;
typedef TYPE_1__ svn_diff_tree_processor_t ;
typedef int svn_client_diff_summarize_func_t ;
struct summarize_baton_t {char* skip_relpath; void* summarize_func_baton; int summarize_func; int * baton_pool; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 struct summarize_baton_t* apr_pcalloc (int *,int) ;
 int diff_dir_added ;
 int diff_dir_changed ;
 int diff_dir_deleted ;
 int diff_dir_opened ;
 int diff_file_added ;
 int diff_file_changed ;
 int diff_file_deleted ;
 TYPE_1__* svn_diff__tree_processor_create (struct summarize_baton_t*,int *) ;

svn_error_t *
svn_client__get_diff_summarize_callbacks(
                        const svn_diff_tree_processor_t **diff_processor,
                        const char ***p_root_relpath,
                        svn_client_diff_summarize_func_t summarize_func,
                        void *summarize_baton,
                        const char *original_target,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_diff_tree_processor_t *dp;
  struct summarize_baton_t *b = apr_pcalloc(result_pool, sizeof(*b));

  b->baton_pool = result_pool;
  b->summarize_func = summarize_func;
  b->summarize_func_baton = summarize_baton;

  dp = svn_diff__tree_processor_create(b, result_pool);


  dp->file_added = diff_file_added;
  dp->file_deleted = diff_file_deleted;
  dp->file_changed = diff_file_changed;

  dp->dir_opened = diff_dir_opened;
  dp->dir_changed = diff_dir_changed;
  dp->dir_deleted = diff_dir_deleted;
  dp->dir_added = diff_dir_added;

  *diff_processor = dp;
  *p_root_relpath = &b->skip_relpath;

  return SVN_NO_ERROR;
}
