#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_revnum_t ;
struct TYPE_16__ {TYPE_3__* priv; } ;
typedef  TYPE_2__ svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
struct TYPE_15__ {char* path; } ;
struct TYPE_17__ {TYPE_1__ session_url; int /*<<< orphan*/  rev_stub; scalar_t__ supports_rev_rsrc_replay; int /*<<< orphan*/  cancel_baton; int /*<<< orphan*/  (* cancel_func ) (int /*<<< orphan*/ ) ;scalar_t__ http20; } ;
typedef  TYPE_3__ svn_ra_serf__session_t ;
struct TYPE_18__ {char* method; char const* path; char* body_type; struct revision_report_t* header_delegate_baton; int /*<<< orphan*/  header_delegate; int /*<<< orphan*/  custom_accept_encoding; struct revision_report_t* done_delegate_baton; int /*<<< orphan*/  done_delegate; struct revision_report_t* body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_4__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_ra_replay_revstart_callback_t ;
typedef  int /*<<< orphan*/  svn_ra_replay_revfinish_callback_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct revision_report_t {int* replay_reports; char const* include_path; char const* revprop_target; TYPE_4__* report_handler; TYPE_4__* propfind_handler; int /*<<< orphan*/  rev_props; scalar_t__ revprop_rev; int /*<<< orphan*/ * pool; TYPE_3__* session; int /*<<< orphan*/  send_deltas; scalar_t__ low_water_mark; scalar_t__ revision; int /*<<< orphan*/ * done; void* replay_baton; int /*<<< orphan*/  revfinish_func; int /*<<< orphan*/  revstart_func; } ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAX_OUTSTANDING_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_NOT_IMPLEMENTED ; 
 scalar_t__ SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  all_props ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct revision_report_t* FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  create_replay_body ; 
 int /*<<< orphan*/  replay_cdata ; 
 int /*<<< orphan*/  replay_closed ; 
 int /*<<< orphan*/  replay_done ; 
 int /*<<< orphan*/  replay_opened ; 
 int /*<<< orphan*/  replay_ttable ; 
 int /*<<< orphan*/  setup_headers ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__**,TYPE_3__*,char const*,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  svn_ra_serf__deliver_svn_props ; 
 int /*<<< orphan*/  FUNC13 (char const**,char*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct revision_report_t*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(svn_ra_session_t *ra_session,
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
  apr_pool_t *subpool = FUNC8(scratch_pool);

  if (session->http20) {
      /* ### Auch... this doesn't work yet... 

         This code relies on responses coming in in an exact order, while
         http2 does everything to deliver responses as fast as possible.

         With http/1.1 we were quite lucky that this worked, as serf doesn't
         promise in order delivery.... (Please do not use authz with keys
         that expire)

         For now fall back to the legacy callback in libsvn_ra that is
         used by all the other ra layers as workaround.

         ### TODO: Optimize
         */
      return FUNC6(SVN_ERR_RA_NOT_IMPLEMENTED, NULL, NULL);
  }

  FUNC0(FUNC14(&report_target, session,
                                       subpool));

  /* Prior to 1.8, mod_dav_svn expect to get replay REPORT requests
     aimed at the session URL.  But that's incorrect -- these reports
     aren't about specific resources -- they are above revisions.  The
     path-based filtering offered by this API is just that: a filter
     applied to the full set of changes made in the revision.  As
     such, the correct target for these REPORT requests is the "me
     resource" (or, pre-http-v2, the default VCC).

     Our server should have told us if it supported this protocol
     correction.  If so, we aimed our report at the correct resource
     and include the filtering path as metadata within the report
     body.  Otherwise, we fall back to the pre-1.8 behavior and just
     wish for the best.

     See issue #4287:
     http://subversion.tigris.org/issues/show_bug.cgi?id=4287
  */
  if (session->supports_rev_rsrc_replay)
    {
      FUNC0(FUNC13(&include_path,
                                             session->session_url.path,
                                             session, subpool));
    }
  else
    {
      include_path = NULL;
    }

  while (active_reports || rev <= end_revision)
    {
      if (session->cancel_func)
        FUNC0(session->cancel_func(session->cancel_baton));

      /* Send pending requests, if any. Limit the number of outstanding
         requests to MAX_OUTSTANDING_REQUESTS. */
      if (rev <= end_revision  && active_reports < MAX_OUTSTANDING_REQUESTS)
        {
          struct revision_report_t *rev_ctx;
          svn_ra_serf__handler_t *handler;
          apr_pool_t *rev_pool = FUNC8(subpool);
          svn_ra_serf__xml_context_t *xmlctx;
          const char *replay_target;

          rev_ctx = FUNC3(rev_pool, sizeof(*rev_ctx));
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

          /* Request all properties of a certain revision. */
          rev_ctx->rev_props = FUNC2(rev_ctx->pool);

          if (FUNC1(session))
            {
              rev_ctx->revprop_target = FUNC4(rev_pool, "%s/%ld",
                                                     session->rev_stub, rev);
              rev_ctx->revprop_rev = SVN_INVALID_REVNUM;
            }
          else
            {
              rev_ctx->revprop_target = report_target;
              rev_ctx->revprop_rev = rev;
            }

          FUNC0(FUNC12(
                                              &rev_ctx->propfind_handler,
                                              session,
                                              rev_ctx->revprop_target,
                                              rev_ctx->revprop_rev,
                                              "0", all_props,
                                              svn_ra_serf__deliver_svn_props,
                                              rev_ctx->rev_props,
                                              rev_pool));

          /* Spin up the serf request for the PROPFIND.  */
          FUNC15(rev_ctx->propfind_handler);

          /* Send the replay REPORT request. */
          if (session->supports_rev_rsrc_replay)
            {
              replay_target = FUNC4(rev_pool, "%s/%ld",
                                           session->rev_stub, rev);
            }
          else
            {
              replay_target = session->session_url.path;
            }

          xmlctx = FUNC16(replay_ttable,
                                           replay_opened, replay_closed,
                                           replay_cdata, rev_ctx,
                                           rev_pool);

          handler = FUNC11(session, xmlctx, NULL,
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
          FUNC15(handler);

          rev++;
          active_reports++;
        }

      /* Run the serf loop. */
      done = FALSE;
      {
        svn_error_t *err = FUNC10(&done, session,
                                                         subpool);

        if (err)
          {
            FUNC9(subpool); /* Unregister all requests! */
            return FUNC7(err);
          }
      }

      /* The done handler of reports decrements active_reports when a report
         is done. This same handler reports (fatal) report errors, so we can
         just loop here. */
    }

  FUNC9(subpool);
  return SVN_NO_ERROR;
}