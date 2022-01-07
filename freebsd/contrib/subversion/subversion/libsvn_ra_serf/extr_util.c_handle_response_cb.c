
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pending_error; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
struct TYPE_6__ {void* done; void* discard_body; TYPE_1__* session; int done_delegate_baton; int * (* done_delegate ) (int *,int ,int *) ;int scheduled; } ;
typedef TYPE_2__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
typedef int serf_request_t ;
typedef int serf_bucket_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_EAGAIN ;
 scalar_t__ APR_EOF ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 int FALSE ;
 scalar_t__ SERF_BUCKET_READ_ERROR (scalar_t__) ;
 void* TRUE ;
 int handle_response (int *,int *,TYPE_2__*,scalar_t__*,int *) ;
 scalar_t__ save_error (TYPE_1__*,int *) ;
 int * stub1 (int *,int ,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static apr_status_t
handle_response_cb(serf_request_t *request,
                   serf_bucket_t *response,
                   void *baton,
                   apr_pool_t *response_pool)
{
  svn_ra_serf__handler_t *handler = baton;
  svn_error_t *err;
  apr_status_t inner_status;
  apr_status_t outer_status;
  apr_pool_t *scratch_pool = response_pool;

  err = svn_error_trace(handle_response(request, response,
                                        handler, &inner_status,
                                        scratch_pool));


  outer_status = save_error(handler->session, err);
  if (!outer_status)
    outer_status = inner_status;


  if (APR_STATUS_IS_EOF(outer_status) || APR_STATUS_IS_EOF(inner_status))
    {
      svn_ra_serf__session_t *sess = handler->session;
      handler->done = TRUE;
      handler->scheduled = FALSE;
      outer_status = APR_EOF;



      save_error(sess,
                 handler->done_delegate(request, handler->done_delegate_baton,
                                        scratch_pool));
    }
  else if (SERF_BUCKET_READ_ERROR(outer_status)
           && handler->session->pending_error)
    {
      handler->discard_body = TRUE;
      handler->done = TRUE;







      outer_status = APR_EAGAIN;
    }

  return outer_status;
}
