
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_16__ {TYPE_3__* priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
struct TYPE_15__ {char* path; } ;
struct TYPE_17__ {TYPE_1__ session_url; int rev_stub; scalar_t__ supports_rev_rsrc_replay; int cancel_baton; int (* cancel_func ) (int ) ;scalar_t__ http20; } ;
typedef TYPE_3__ svn_ra_serf__session_t ;
struct TYPE_18__ {char* method; char const* path; char* body_type; struct revision_report_t* header_delegate_baton; int header_delegate; int custom_accept_encoding; struct revision_report_t* done_delegate_baton; int done_delegate; struct revision_report_t* body_delegate_baton; int body_delegate; } ;
typedef TYPE_4__ svn_ra_serf__handler_t ;
typedef int svn_ra_replay_revstart_callback_t ;
typedef int svn_ra_replay_revfinish_callback_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct revision_report_t {int* replay_reports; char const* include_path; char const* revprop_target; TYPE_4__* report_handler; TYPE_4__* propfind_handler; int rev_props; scalar_t__ revprop_rev; int * pool; TYPE_3__* session; int send_deltas; scalar_t__ low_water_mark; scalar_t__ revision; int * done; void* replay_baton; int revfinish_func; int revstart_func; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int MAX_OUTSTANDING_REQUESTS ;
 int SVN_ERR (int ) ;
 int SVN_ERR_RA_NOT_IMPLEMENTED ;
 scalar_t__ SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ SVN_RA_SERF__HAVE_HTTPV2_SUPPORT (TYPE_3__*) ;
 int TRUE ;
 int all_props ;
 int apr_hash_make (int *) ;
 struct revision_report_t* apr_pcalloc (int *,int) ;
 void* apr_psprintf (int *,char*,int ,scalar_t__) ;
 int create_replay_body ;
 int replay_cdata ;
 int replay_closed ;
 int replay_done ;
 int replay_opened ;
 int replay_ttable ;
 int setup_headers ;
 int stub1 (int ) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_serf__context_run_wait (int *,TYPE_3__*,int *) ;
 TYPE_4__* svn_ra_serf__create_expat_handler (TYPE_3__*,int *,int *,int *) ;
 int svn_ra_serf__create_propfind_handler (TYPE_4__**,TYPE_3__*,char const*,scalar_t__,char*,int ,int ,int ,int *) ;
 int svn_ra_serf__deliver_svn_props ;
 int svn_ra_serf__get_relative_path (char const**,char*,TYPE_3__*,int *) ;
 int svn_ra_serf__report_resource (char const**,TYPE_3__*,int *) ;
 int svn_ra_serf__request_create (TYPE_4__*) ;
 int * svn_ra_serf__xml_context_create (int ,int ,int ,int ,struct revision_report_t*,int *) ;

svn_error_t *
svn_ra_serf__replay_range(svn_ra_session_t *ra_session,
                          svn_revnum_t start_revision,
                          svn_revnum_t end_revision,
                          svn_revnum_t low_water_mark,
                          svn_boolean_t send_deltas,
                          svn_ra_replay_revstart_callback_t revstart_func,
                          svn_ra_replay_revfinish_callback_t revfinish_func,
                          void *replay_baton,
                          apr_pool_t *scratch_pool)
{
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_revnum_t rev = start_revision;
  const char *report_target;
  int active_reports = 0;
  const char *include_path;
  svn_boolean_t done;
  apr_pool_t *subpool = svn_pool_create(scratch_pool);

  if (session->http20) {
      return svn_error_create(SVN_ERR_RA_NOT_IMPLEMENTED, ((void*)0), ((void*)0));
  }

  SVN_ERR(svn_ra_serf__report_resource(&report_target, session,
                                       subpool));
  if (session->supports_rev_rsrc_replay)
    {
      SVN_ERR(svn_ra_serf__get_relative_path(&include_path,
                                             session->session_url.path,
                                             session, subpool));
    }
  else
    {
      include_path = ((void*)0);
    }

  while (active_reports || rev <= end_revision)
    {
      if (session->cancel_func)
        SVN_ERR(session->cancel_func(session->cancel_baton));



      if (rev <= end_revision && active_reports < MAX_OUTSTANDING_REQUESTS)
        {
          struct revision_report_t *rev_ctx;
          svn_ra_serf__handler_t *handler;
          apr_pool_t *rev_pool = svn_pool_create(subpool);
          svn_ra_serf__xml_context_t *xmlctx;
          const char *replay_target;

          rev_ctx = apr_pcalloc(rev_pool, sizeof(*rev_ctx));
          rev_ctx->pool = rev_pool;
          rev_ctx->revstart_func = revstart_func;
          rev_ctx->revfinish_func = revfinish_func;
          rev_ctx->replay_baton = replay_baton;
          rev_ctx->done = &done;
          rev_ctx->replay_reports = &active_reports;
          rev_ctx->include_path = include_path;
          rev_ctx->revision = rev;
          rev_ctx->low_water_mark = low_water_mark;
          rev_ctx->send_deltas = send_deltas;
          rev_ctx->session = session;


          rev_ctx->rev_props = apr_hash_make(rev_ctx->pool);

          if (SVN_RA_SERF__HAVE_HTTPV2_SUPPORT(session))
            {
              rev_ctx->revprop_target = apr_psprintf(rev_pool, "%s/%ld",
                                                     session->rev_stub, rev);
              rev_ctx->revprop_rev = SVN_INVALID_REVNUM;
            }
          else
            {
              rev_ctx->revprop_target = report_target;
              rev_ctx->revprop_rev = rev;
            }

          SVN_ERR(svn_ra_serf__create_propfind_handler(
                                              &rev_ctx->propfind_handler,
                                              session,
                                              rev_ctx->revprop_target,
                                              rev_ctx->revprop_rev,
                                              "0", all_props,
                                              svn_ra_serf__deliver_svn_props,
                                              rev_ctx->rev_props,
                                              rev_pool));


          svn_ra_serf__request_create(rev_ctx->propfind_handler);


          if (session->supports_rev_rsrc_replay)
            {
              replay_target = apr_psprintf(rev_pool, "%s/%ld",
                                           session->rev_stub, rev);
            }
          else
            {
              replay_target = session->session_url.path;
            }

          xmlctx = svn_ra_serf__xml_context_create(replay_ttable,
                                           replay_opened, replay_closed,
                                           replay_cdata, rev_ctx,
                                           rev_pool);

          handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0),
                                                      rev_pool);

          handler->method = "REPORT";
          handler->path = replay_target;
          handler->body_delegate = create_replay_body;
          handler->body_delegate_baton = rev_ctx;
          handler->body_type = "text/xml";

          handler->done_delegate = replay_done;
          handler->done_delegate_baton = rev_ctx;

          handler->custom_accept_encoding = TRUE;
          handler->header_delegate = setup_headers;
          handler->header_delegate_baton = rev_ctx;

          rev_ctx->report_handler = handler;
          svn_ra_serf__request_create(handler);

          rev++;
          active_reports++;
        }


      done = FALSE;
      {
        svn_error_t *err = svn_ra_serf__context_run_wait(&done, session,
                                                         subpool);

        if (err)
          {
            svn_pool_destroy(subpool);
            return svn_error_trace(err);
          }
      }




    }

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
