#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_context_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__session_t ;
struct TYPE_13__ {char* method; char const* path; char* body_type; TYPE_4__* header_delegate_baton; int /*<<< orphan*/  header_delegate; int /*<<< orphan*/  custom_accept_encoding; int /*<<< orphan*/  body_delegate_baton; int /*<<< orphan*/  body_delegate; } ;
typedef  TYPE_3__ svn_ra_serf__handler_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  editor_baton; TYPE_1__* editor; int /*<<< orphan*/  body; int /*<<< orphan*/  body_template; int /*<<< orphan*/ * sess; } ;
typedef  TYPE_4__ report_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/ * (* abort_edit ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup_update_report_headers ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  update_cdata ; 
 int /*<<< orphan*/  update_closed ; 
 int /*<<< orphan*/  update_opened ; 
 int /*<<< orphan*/  update_ttable ; 

__attribute__((used)) static svn_error_t *
FUNC15(void *report_baton,
              apr_pool_t *pool)
{
  report_context_t *report = report_baton;
  svn_ra_serf__session_t *sess = report->sess;
  svn_ra_serf__handler_t *handler;
  svn_ra_serf__xml_context_t *xmlctx;
  const char *report_target;
  svn_stringbuf_t *buf = NULL;
  apr_pool_t *scratch_pool = FUNC5(pool);
  svn_error_t *err;

  FUNC14(&buf, scratch_pool, "S:update-report");
  FUNC0(FUNC13(report->body_template, buf->data, &buf->len));
  FUNC0(FUNC12(report->body_template));

  FUNC0(FUNC8(&report_target, sess,  scratch_pool));

  xmlctx = FUNC11(update_ttable,
                                           update_opened, update_closed,
                                           update_cdata,
                                           report,
                                           scratch_pool);
  handler = FUNC7(sess, xmlctx, NULL,
                                              scratch_pool);

  FUNC9(&handler->body_delegate,
                                         &handler->body_delegate_baton,
                                         report->body);
  handler->method = "REPORT";
  handler->path = report_target;
  handler->body_type = "text/xml";
  handler->custom_accept_encoding = TRUE;
  handler->header_delegate = setup_update_report_headers;
  handler->header_delegate_baton = report;

  FUNC10(handler);

  err = FUNC1(report, handler, scratch_pool);

  if (err)
    {
      err = FUNC4(err);
      err = FUNC3(
                err,
                FUNC4(
                    report->editor->abort_edit(report->editor_baton,
                                               scratch_pool)));
    }

  FUNC6(scratch_pool);

  return FUNC4(err);
}