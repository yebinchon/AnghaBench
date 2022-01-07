
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ spillbuf; struct TYPE_16__* inner_handler_baton; int inner_handler; TYPE_6__* report; } ;
typedef TYPE_3__ update_delay_baton_t ;
struct TYPE_17__ {int cur_conn; int num_conns; TYPE_1__** conns; int timeout; } ;
typedef TYPE_4__ svn_ra_serf__session_t ;
struct TYPE_18__ {scalar_t__ server_error; scalar_t__ done; TYPE_3__* response_baton; int response_handler; } ;
typedef TYPE_5__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_19__ {int editor_baton; TYPE_2__* editor; scalar_t__ done; scalar_t__ num_active_propfinds; scalar_t__ num_active_fetches; TYPE_4__* sess; } ;
typedef TYPE_6__ report_context_t ;
typedef int apr_pool_t ;
typedef int apr_interval_time_t ;
struct TYPE_15__ {int * (* close_edit ) (int ,int *) ;} ;
struct TYPE_14__ {int bkt_alloc; } ;


 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int ) ;
 int SVN_ERR_RA_DAV_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 int * open_connection_if_needed (TYPE_4__*,int ) ;
 int * process_pending (TYPE_3__*,int *) ;
 int serf_debug__closed_conn (int ) ;
 int * stub1 (int ,int *) ;
 int svn_error_clear (int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_serf__context_run (TYPE_4__*,int *,int *) ;
 int * svn_ra_serf__server_error_create (TYPE_5__*,int *) ;
 int update_delay_handler ;

__attribute__((used)) static svn_error_t *
process_editor_report(report_context_t *ctx,
                      svn_ra_serf__handler_t *handler,
                      apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *sess = ctx->sess;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_interval_time_t waittime_left = sess->timeout;
  update_delay_baton_t *ud;



  ud = apr_pcalloc(scratch_pool, sizeof(*ud));
  ud->report = ctx;

  ud->inner_handler = handler->response_handler;
  ud->inner_handler_baton = handler->response_baton;

  handler->response_handler = update_delay_handler;
  handler->response_baton = ud;


  SVN_ERR(open_connection_if_needed(sess, 0));

  sess->cur_conn = 1;






  while (!handler->done
         || ctx->num_active_fetches
         || ctx->num_active_propfinds
         || !ctx->done)
    {
      svn_error_t *err;
      int i;

      svn_pool_clear(iterpool);

      err = svn_ra_serf__context_run(sess, &waittime_left, iterpool);

      if (handler->done && handler->server_error)
        {
          svn_error_clear(err);
          err = svn_ra_serf__server_error_create(handler, iterpool);

          SVN_ERR_ASSERT(err != ((void*)0));
        }

      SVN_ERR(err);


      if (ud->spillbuf)
        SVN_ERR(process_pending(ud, iterpool));


      for (i = 0; i < sess->num_conns; i++)
        {
          serf_debug__closed_conn(sess->conns[i]->bkt_alloc);
        }
    }

  svn_pool_clear(iterpool);


  if (ctx->done)
    SVN_ERR(ctx->editor->close_edit(ctx->editor_baton, iterpool));
  else
    return svn_error_create(SVN_ERR_RA_DAV_MALFORMED_DATA, ((void*)0),
                            _("Missing update-report close tag"));

  svn_pool_destroy(iterpool);
  return SVN_NO_ERROR;
}
