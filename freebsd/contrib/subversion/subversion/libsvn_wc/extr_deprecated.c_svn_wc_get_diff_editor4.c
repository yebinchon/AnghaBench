
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct diff_callbacks2_wrapper_baton {void* baton; int const* callbacks2; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 struct diff_callbacks2_wrapper_baton* apr_palloc (int *,int) ;
 int diff_callbacks2_wrapper ;
 int * svn_wc_get_diff_editor5 (int *,char const*,int *,struct diff_callbacks2_wrapper_baton*,int ,int ,int ,int ,int ,void*,int const*,int const**,void**,int *) ;

svn_error_t *
svn_wc_get_diff_editor4(svn_wc_adm_access_t *anchor,
                        const char *target,
                        const svn_wc_diff_callbacks2_t *callbacks,
                        void *callback_baton,
                        svn_depth_t depth,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t use_text_base,
                        svn_boolean_t reverse_order,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        const apr_array_header_t *changelist_filter,
                        const svn_delta_editor_t **editor,
                        void **edit_baton,
                        apr_pool_t *pool)
{
  struct diff_callbacks2_wrapper_baton *b = apr_palloc(pool, sizeof(*b));
  b->callbacks2 = callbacks;
  b->baton = callback_baton;
  return svn_wc_get_diff_editor5(anchor,
                                 target,
                                 &diff_callbacks2_wrapper,
                                 b,
                                 depth,
                                 ignore_ancestry,
                                 use_text_base,
                                 reverse_order,
                                 cancel_func,
                                 cancel_baton,
                                 changelist_filter,
                                 editor,
                                 edit_baton,
                                 pool);
}
