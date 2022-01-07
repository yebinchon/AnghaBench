
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pending_error; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
typedef int svn_error_t ;
typedef int apr_status_t ;
struct TYPE_6__ {int apr_err; } ;


 int APR_SUCCESS ;
 TYPE_2__* svn_error_compose_create (TYPE_2__*,int *) ;

__attribute__((used)) static apr_status_t
save_error(svn_ra_serf__session_t *session,
           svn_error_t *err)
{
  if (err || session->pending_error)
    {
      session->pending_error = svn_error_compose_create(
                                  session->pending_error,
                                  err);
      return session->pending_error->apr_err;
    }

  return APR_SUCCESS;
}
