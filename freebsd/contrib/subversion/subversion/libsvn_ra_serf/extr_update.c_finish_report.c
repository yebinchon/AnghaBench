
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_ra_serf__xml_context_t ;
typedef int svn_ra_serf__session_t ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_4__* header_delegate_baton; int header_delegate; int custom_accept_encoding; int body_delegate_baton; int body_delegate; } ;
typedef TYPE_3__ svn_ra_serf__handler_t ;
typedef int svn_error_t ;
struct TYPE_14__ {int editor_baton; TYPE_1__* editor; int body; int body_template; int * sess; } ;
typedef TYPE_4__ report_context_t ;
typedef int apr_pool_t ;
struct TYPE_11__ {int * (* abort_edit ) (int ,int *) ;} ;


 int SVN_ERR (int ) ;
 int TRUE ;
 int * process_editor_report (TYPE_4__*,TYPE_3__*,int *) ;
 int setup_update_report_headers ;
 int * stub1 (int ,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 TYPE_3__* svn_ra_serf__create_expat_handler (int *,int *,int *,int *) ;
 int svn_ra_serf__report_resource (char const**,int *,int *) ;
 int svn_ra_serf__request_body_get_delegate (int *,int *,int ) ;
 int svn_ra_serf__request_create (TYPE_3__*) ;
 int * svn_ra_serf__xml_context_create (int ,int ,int ,int ,TYPE_4__*,int *) ;
 int svn_stream_close (int ) ;
 int svn_stream_write (int ,int ,int *) ;
 int svn_xml_make_close_tag (TYPE_2__**,int *,char*) ;
 int update_cdata ;
 int update_closed ;
 int update_opened ;
 int update_ttable ;

__attribute__((used)) static svn_error_t *
finish_report(void *report_baton,
              apr_pool_t *pool)
{
  report_context_t *report = report_baton;
  svn_ra_serf__session_t *sess = report->sess;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *report_target;
  svn_stringbuf_t *buf = ((void*)0);
  apr_pool_t *scratch_pool = svn_pool_create(pool);
  svn_error_t *err;

  svn_xml_make_close_tag(&buf, scratch_pool, "S:update-report");
  SVN_ERR(svn_stream_write(report->body_template, buf->data, &buf->len));
  SVN_ERR(svn_stream_close(report->body_template));

  SVN_ERR(svn_ra_serf__report_resource(&report_target, sess, scratch_pool));

  xmlctx = svn_ra_serf__xml_context_create(update_ttable,
                                           update_opened, update_closed,
                                           update_cdata,
                                           report,
                                           scratch_pool);
  handler = svn_ra_serf__create_expat_handler(sess, xmlctx, ((void*)0),
                                              scratch_pool);

  svn_ra_serf__request_body_get_delegate(&handler->body_delegate,
                                         &handler->body_delegate_baton,
                                         report->body);
  handler->method = "REPORT";
  handler->path = report_target;
  handler->body_type = "text/xml";
  handler->custom_accept_encoding = TRUE;
  handler->header_delegate = setup_update_report_headers;
  handler->header_delegate_baton = report;

  svn_ra_serf__request_create(handler);

  err = process_editor_report(report, handler, scratch_pool);

  if (err)
    {
      err = svn_error_trace(err);
      err = svn_error_compose_create(
                err,
                svn_error_trace(
                    report->editor->abort_edit(report->editor_baton,
                                               scratch_pool)));
    }

  svn_pool_destroy(scratch_pool);

  return svn_error_trace(err);
}
