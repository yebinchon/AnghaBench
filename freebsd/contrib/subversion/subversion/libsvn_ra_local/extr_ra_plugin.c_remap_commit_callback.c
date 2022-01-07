
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_session_t ;
typedef int * svn_commit_callback2_t ;
struct ccw_baton {void* original_baton; int * original_callback; int * session; } ;
typedef int apr_pool_t ;


 struct ccw_baton* apr_palloc (int *,int) ;
 int * commit_callback_wrapper ;

__attribute__((used)) static void
remap_commit_callback(svn_commit_callback2_t *callback,
                      void **callback_baton,
                      svn_ra_session_t *session,
                      svn_commit_callback2_t original_callback,
                      void *original_baton,
                      apr_pool_t *result_pool)
{
  if (original_callback == ((void*)0))
    {
      *callback = ((void*)0);
      *callback_baton = ((void*)0);
    }
  else
    {


      struct ccw_baton *ccwb = apr_palloc(result_pool, sizeof(*ccwb));

      ccwb->session = session;
      ccwb->original_callback = original_callback;
      ccwb->original_baton = original_baton;

      *callback = commit_callback_wrapper;
      *callback_baton = ccwb;
    }
}
