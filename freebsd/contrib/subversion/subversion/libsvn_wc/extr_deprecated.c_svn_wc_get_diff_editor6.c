
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks4_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 int * svn_diff__tree_processor_copy_as_changed_create (int const*,int *) ;
 int * svn_diff__tree_processor_reverse_create (int const*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__get_diff_editor (int const**,void**,int *,char const*,char const*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const*,int const*,int ,void*,int *,int *) ;
 int svn_wc__wrap_diff_callbacks (int const**,int const*,void*,scalar_t__,int *,int *) ;

svn_error_t *
svn_wc_get_diff_editor6(const svn_delta_editor_t **editor,
                        void **edit_baton,
                        svn_wc_context_t *wc_ctx,
                        const char *anchor_abspath,
                        const char *target,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t show_copies_as_adds,
                        svn_boolean_t use_git_diff_format,
                        svn_boolean_t use_text_base,
                        svn_boolean_t reverse_order,
                        svn_boolean_t server_performs_filtering,
                        const apr_array_header_t *changelist_filter,
                        const svn_wc_diff_callbacks4_t *callbacks,
                        void *callback_baton,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const svn_diff_tree_processor_t *diff_processor;


  if (use_git_diff_format)
    show_copies_as_adds = TRUE;


  if (show_copies_as_adds)
    ignore_ancestry = FALSE;

  SVN_ERR(svn_wc__wrap_diff_callbacks(&diff_processor,
                                      callbacks, callback_baton, TRUE,
                                      result_pool, scratch_pool));

  if (reverse_order)
    diff_processor = svn_diff__tree_processor_reverse_create(
                              diff_processor, ((void*)0), result_pool);

  if (! show_copies_as_adds)
    diff_processor = svn_diff__tree_processor_copy_as_changed_create(
                              diff_processor, result_pool);

  return svn_error_trace(
    svn_wc__get_diff_editor(editor, edit_baton,
                            wc_ctx,
                            anchor_abspath, target,
                            depth,
                            ignore_ancestry, use_text_base,
                            reverse_order, server_performs_filtering,
                            changelist_filter,
                            diff_processor,
                            cancel_func, cancel_baton,
                            result_pool, scratch_pool));
}
