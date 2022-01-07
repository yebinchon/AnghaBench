
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks4_t ;
typedef int svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_diff_tree_processor_t ;
typedef int svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 scalar_t__ TRUE ;
 int * svn_diff__tree_processor_copy_as_changed_create (int const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__diff7 (int *,int *,int *,char const*,int ,scalar_t__,int const*,int const*,int ,void*,int *,int *) ;
 int svn_wc__wrap_diff_callbacks (int const**,int const*,void*,scalar_t__,int *,int *) ;

svn_error_t *
svn_wc_diff6(svn_wc_context_t *wc_ctx,
             const char *local_abspath,
             const svn_wc_diff_callbacks4_t *callbacks,
             void *callback_baton,
             svn_depth_t depth,
             svn_boolean_t ignore_ancestry,
             svn_boolean_t show_copies_as_adds,
             svn_boolean_t use_git_diff_format,
             const apr_array_header_t *changelist_filter,
             svn_cancel_func_t cancel_func,
             void *cancel_baton,
             apr_pool_t *scratch_pool)
{
  const svn_diff_tree_processor_t *processor;

  SVN_ERR(svn_wc__wrap_diff_callbacks(&processor,
                                      callbacks, callback_baton, TRUE,
                                      scratch_pool, scratch_pool));

  if (use_git_diff_format)
    show_copies_as_adds = TRUE;
  if (show_copies_as_adds)
    ignore_ancestry = FALSE;

  if (! show_copies_as_adds && !use_git_diff_format)
    processor = svn_diff__tree_processor_copy_as_changed_create(processor,
                                                                scratch_pool);

  return svn_error_trace(svn_wc__diff7(((void*)0), ((void*)0),
                                       wc_ctx, local_abspath,
                                       depth,
                                       ignore_ancestry,
                                       changelist_filter,
                                       processor,
                                       cancel_func, cancel_baton,
                                       scratch_pool, scratch_pool));
}
