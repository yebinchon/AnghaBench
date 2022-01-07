
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_commit_callback_t ;
typedef int svn_commit_callback2_t ;
struct commit_wrapper_baton {int callback; void* baton; } ;
typedef int apr_pool_t ;


 struct commit_wrapper_baton* apr_palloc (int *,int) ;
 int commit_wrapper_callback ;

void
svn_compat_wrap_commit_callback(svn_commit_callback2_t *callback2,
                                void **callback2_baton,
                                svn_commit_callback_t callback,
                                void *callback_baton,
                                apr_pool_t *pool)
{
  struct commit_wrapper_baton *cwb = apr_palloc(pool, sizeof(*cwb));


  cwb->baton = callback_baton;
  cwb->callback = callback;

  *callback2_baton = cwb;
  *callback2 = commit_wrapper_callback;
}
