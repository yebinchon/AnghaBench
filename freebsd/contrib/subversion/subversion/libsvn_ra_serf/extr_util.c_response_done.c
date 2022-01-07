
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
struct TYPE_6__ {int no_fail_on_http_redirect_status; TYPE_1__ sline; scalar_t__ server_error; scalar_t__ no_fail_on_http_failure_status; int done; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int assert (int ) ;
 int * svn_error_trace (int ) ;
 int * svn_ra_serf__server_error_create (TYPE_2__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
response_done(serf_request_t *request,
              void *handler_baton,
              apr_pool_t *scratch_pool)
{
  svn_ra_serf__handler_t *handler = handler_baton;

  assert(handler->done);

  if (handler->no_fail_on_http_failure_status)
    return SVN_NO_ERROR;

  if (handler->server_error)
    return svn_ra_serf__server_error_create(handler, scratch_pool);

  if (handler->sline.code >= 400 || handler->sline.code <= 199)
    {
      return svn_error_trace(svn_ra_serf__unexpected_status(handler));
    }

  if ((handler->sline.code >= 300 && handler->sline.code < 399)
      && !handler->no_fail_on_http_redirect_status)
    {
      return svn_error_trace(svn_ra_serf__unexpected_status(handler));
    }

  return SVN_NO_ERROR;
}
