
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int walk_deleted_dirs; int * empty_file; void* callback_baton; int const* callbacks; int * result_pool; } ;
typedef TYPE_1__ wc_diff_wrap_baton_t ;
typedef int svn_wc_diff_callbacks4_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int file_changed; int file_deleted; int file_added; int file_opened; int dir_closed; int dir_changed; int dir_deleted; int dir_added; int dir_opened; } ;
typedef TYPE_2__ svn_diff_tree_processor_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 TYPE_2__* svn_diff__tree_processor_create (TYPE_1__*,int *) ;
 int wrap_dir_added ;
 int wrap_dir_changed ;
 int wrap_dir_closed ;
 int wrap_dir_deleted ;
 int wrap_dir_opened ;
 int wrap_file_added ;
 int wrap_file_changed ;
 int wrap_file_deleted ;
 int wrap_file_opened ;

svn_error_t *
svn_wc__wrap_diff_callbacks(const svn_diff_tree_processor_t **diff_processor,
                            const svn_wc_diff_callbacks4_t *callbacks,
                            void *callback_baton,
                            svn_boolean_t walk_deleted_dirs,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  wc_diff_wrap_baton_t *wrap_baton;
  svn_diff_tree_processor_t *processor;

  wrap_baton = apr_pcalloc(result_pool, sizeof(*wrap_baton));

  wrap_baton->result_pool = result_pool;
  wrap_baton->callbacks = callbacks;
  wrap_baton->callback_baton = callback_baton;
  wrap_baton->empty_file = ((void*)0);
  wrap_baton->walk_deleted_dirs = walk_deleted_dirs;

  processor = svn_diff__tree_processor_create(wrap_baton, result_pool);

  processor->dir_opened = wrap_dir_opened;
  processor->dir_added = wrap_dir_added;
  processor->dir_deleted = wrap_dir_deleted;
  processor->dir_changed = wrap_dir_changed;
  processor->dir_closed = wrap_dir_closed;

  processor->file_opened = wrap_file_opened;
  processor->file_added = wrap_file_added;
  processor->file_deleted = wrap_file_deleted;
  processor->file_changed = wrap_file_changed;
                                                 ;

  *diff_processor = processor;
  return SVN_NO_ERROR;
}
