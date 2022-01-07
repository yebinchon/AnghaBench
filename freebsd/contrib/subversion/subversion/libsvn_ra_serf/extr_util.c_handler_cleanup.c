
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scheduled; } ;
typedef TYPE_1__ svn_ra_serf__handler_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int svn_ra_serf__unschedule_handler (TYPE_1__*) ;

__attribute__((used)) static apr_status_t
handler_cleanup(void *baton)
{
  svn_ra_serf__handler_t *handler = baton;
  if (handler->scheduled)
    {
      svn_ra_serf__unschedule_handler(handler);
    }

  return APR_SUCCESS;
}
