
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_diff_callbacks_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct diff_callbacks_wrapper_baton {void* baton; int const* callbacks; } ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_FILES (int ) ;
 struct diff_callbacks_wrapper_baton* apr_pcalloc (int *,int) ;
 int diff_callbacks_wrapper ;
 int * svn_wc_diff5 (int *,char const*,int *,struct diff_callbacks_wrapper_baton*,int ,int ,int *,int *) ;

svn_error_t *
svn_wc_diff2(svn_wc_adm_access_t *anchor,
             const char *target,
             const svn_wc_diff_callbacks_t *callbacks,
             void *callback_baton,
             svn_boolean_t recurse,
             svn_boolean_t ignore_ancestry,
             apr_pool_t *pool)
{
  struct diff_callbacks_wrapper_baton *b = apr_pcalloc(pool, sizeof(*b));
  b->callbacks = callbacks;
  b->baton = callback_baton;
  return svn_wc_diff5(anchor, target, &diff_callbacks_wrapper, b,
                      SVN_DEPTH_INFINITY_OR_FILES(recurse), ignore_ancestry,
                      ((void*)0), pool);
}
