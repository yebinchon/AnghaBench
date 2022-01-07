
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
struct diff_callbacks_wrapper_baton {void* baton; int const* callbacks; } ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 struct diff_callbacks_wrapper_baton* apr_palloc (int *,int) ;
 int diff_callbacks_wrapper ;
 int * svn_wc_get_diff_editor5 (int *,char const*,int *,struct diff_callbacks_wrapper_baton*,int ,int ,int ,int ,int ,void*,int *,int const**,void**,int *) ;

svn_error_t *
svn_wc_get_diff_editor2(svn_wc_adm_access_t *anchor,
                        const char *target,
                        const svn_wc_diff_callbacks_t *callbacks,
                        void *callback_baton,
                        svn_boolean_t recurse,
                        svn_boolean_t ignore_ancestry,
                        svn_boolean_t use_text_base,
                        svn_boolean_t reverse_order,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        const svn_delta_editor_t **editor,
                        void **edit_baton,
                        apr_pool_t *pool)
{
  struct diff_callbacks_wrapper_baton *b = apr_palloc(pool, sizeof(*b));
  b->callbacks = callbacks;
  b->baton = callback_baton;
  return svn_wc_get_diff_editor5(anchor, target, &diff_callbacks_wrapper, b,
                                 SVN_DEPTH_INFINITY_OR_FILES(recurse),
                                 ignore_ancestry, use_text_base,
                                 reverse_order, cancel_func, cancel_baton,
                                 ((void*)0), editor, edit_baton, pool);
}
