
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
struct TYPE_6__ {TYPE_1__ sline; scalar_t__ server_error; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct revision_report_t {int pool; int * replay_reports; int * done; TYPE_2__* report_handler; } ;
typedef int serf_request_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int * svn_error_trace (int ) ;
 int svn_pool_destroy (int ) ;
 int * svn_ra_serf__server_error_create (TYPE_2__*,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_2__*) ;

__attribute__((used)) static svn_error_t *
replay_done(serf_request_t *request,
            void *baton,
            apr_pool_t *scratch_pool)
{
  struct revision_report_t *ctx = baton;
  svn_ra_serf__handler_t *handler = ctx->report_handler;

  if (handler->server_error)
    return svn_ra_serf__server_error_create(handler, scratch_pool);
  else if (handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  *ctx->done = TRUE;


  if (ctx->replay_reports)
    {
      (*ctx->replay_reports)--;
    }

  svn_pool_destroy(ctx->pool);

  return SVN_NO_ERROR;
}
