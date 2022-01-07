
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_12__ {int * priv; } ;
typedef TYPE_2__ svn_ra_session_t ;
typedef int svn_ra_serf__xml_context_t ;
typedef int svn_ra_serf__session_t ;
struct TYPE_11__ {int code; } ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_1__ sline; TYPE_4__* body_delegate_baton; int body_delegate; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int * revision; int time; } ;
typedef TYPE_4__ date_context_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_RA_DAV_PROPS_NOT_FOUND ;
 int SVN_INVALID_REVNUM ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_4__* apr_palloc (int *,int) ;
 int create_getdate_body ;
 int date_closed ;
 int date_ttable ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_ra_serf__context_run_one (TYPE_3__*,int *) ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int *,int *,int *,int *) ;
 int svn_ra_serf__report_resource (char const**,int *,int *) ;
 int svn_ra_serf__unexpected_status (TYPE_3__*) ;
 int * svn_ra_serf__xml_context_create (int ,int *,int ,int *,TYPE_4__*,int *) ;

svn_error_t *
svn_ra_serf__get_dated_revision(svn_ra_session_t *ra_session,
                                svn_revnum_t *revision,
                                apr_time_t tm,
                                apr_pool_t *pool)
{
  date_context_t *date_ctx;
  svn_ra_serf__session_t *session = ra_session->priv;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *report_target;

  date_ctx = apr_palloc(pool, sizeof(*date_ctx));
  date_ctx->time = tm;
  date_ctx->revision = revision;

  SVN_ERR(svn_ra_serf__report_resource(&report_target, session, pool));

  xmlctx = svn_ra_serf__xml_context_create(date_ttable,
                                           ((void*)0), date_closed, ((void*)0),
                                           date_ctx,
                                           pool);
  handler = svn_ra_serf__create_expat_handler(session, xmlctx, ((void*)0), pool);

  handler->method = "REPORT";
  handler->path = report_target;
  handler->body_type = "text/xml";

  handler->body_delegate = create_getdate_body;
  handler->body_delegate_baton = date_ctx;

  *date_ctx->revision = SVN_INVALID_REVNUM;

  SVN_ERR(svn_ra_serf__context_run_one(handler, pool));

  if (handler->sline.code != 200)
    return svn_error_trace(svn_ra_serf__unexpected_status(handler));

  if (!SVN_IS_VALID_REVNUM(*revision))
    return svn_error_create(SVN_ERR_RA_DAV_PROPS_NOT_FOUND, ((void*)0),
                            _("The REPORT response did not include "
                              "the requested properties"));

  return SVN_NO_ERROR;
}
