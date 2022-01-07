
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ scheduled; int session; int done; } ;
typedef TYPE_1__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int *) ;
 int * svn_ra_serf__context_run_wait (int *,int ,int *) ;
 int svn_ra_serf__request_create (TYPE_1__*) ;
 int svn_ra_serf__unschedule_handler (TYPE_1__*) ;

svn_error_t *
svn_ra_serf__context_run_one(svn_ra_serf__handler_t *handler,
                             apr_pool_t *scratch_pool)
{
  svn_error_t *err;


  svn_ra_serf__request_create(handler);


  err = svn_ra_serf__context_run_wait(&handler->done, handler->session,
                                      scratch_pool);

  if (handler->scheduled)
    {



      svn_ra_serf__unschedule_handler(handler);
    }

  return svn_error_trace(err);
}
