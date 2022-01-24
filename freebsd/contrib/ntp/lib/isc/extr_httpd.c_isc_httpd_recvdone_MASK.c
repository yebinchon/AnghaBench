#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_time_t ;
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_25__ {scalar_t__ result; int /*<<< orphan*/  n; } ;
typedef  TYPE_2__ isc_socketevent_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_26__ {unsigned char* base; int length; } ;
typedef  TYPE_3__ isc_region_t ;
struct TYPE_27__ {scalar_t__ (* action ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  action_arg; int /*<<< orphan*/  url; } ;
typedef  TYPE_4__ isc_httpdurl_t ;
struct TYPE_28__ {int recvlen; char* mimetype; int /*<<< orphan*/  bufflist; int /*<<< orphan*/  sock; int /*<<< orphan*/  bodybuffer; int /*<<< orphan*/  headerbuffer; int /*<<< orphan*/  freecb_arg; int /*<<< orphan*/  freecb; int /*<<< orphan*/  retmsg; int /*<<< orphan*/  retcode; int /*<<< orphan*/  querystring; int /*<<< orphan*/  url; TYPE_1__* mgr; scalar_t__ recvbuf; } ;
typedef  TYPE_5__ isc_httpd_t ;
struct TYPE_29__ {TYPE_5__* ev_arg; } ;
typedef  TYPE_6__ isc_event_t ;
typedef  int /*<<< orphan*/  datebuf ;
struct TYPE_24__ {scalar_t__ (* render_404 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ (* render_500 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  urls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int HTTP_RECVLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_NOTFOUND ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  isc_httpd_senddone ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *,void (*) (int /*<<< orphan*/ *,TYPE_6__*),TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ FUNC23 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC28(isc_task_t *task, isc_event_t *ev)
{
	isc_region_t r;
	isc_result_t result;
	isc_httpd_t *httpd = ev->ev_arg;
	isc_socketevent_t *sev = (isc_socketevent_t *)ev;
	isc_httpdurl_t *url;
	isc_time_t now;
	char datebuf[32];  /* Only need 30, but safety first */

	FUNC0("recv");

	FUNC2(FUNC3(httpd));

	if (sev->result != ISC_R_SUCCESS) {
		FUNC8("recv destroying client");
		FUNC10(&httpd);
		goto out;
	}

	result = FUNC23(httpd, sev->n);
	if (result == ISC_R_NOTFOUND) {
		if (httpd->recvlen >= HTTP_RECVLEN - 1) {
			FUNC10(&httpd);
			goto out;
		}
		r.base = (unsigned char *)httpd->recvbuf + httpd->recvlen;
		r.length = HTTP_RECVLEN - httpd->recvlen - 1;
		/* check return code? */
		(void)FUNC19(httpd->sock, &r, 1, task,
				      isc_httpd_recvdone, httpd);
		goto out;
	} else if (result != ISC_R_SUCCESS) {
		FUNC10(&httpd);
		goto out;
	}

	FUNC4(httpd);

	/*
	 * XXXMLG Call function here.  Provide an add-header function
	 * which will append the common headers to a response we generate.
	 */
	FUNC11(&httpd->bodybuffer);
	FUNC22(&now);
	FUNC21(&now, datebuf, sizeof(datebuf));
	url = FUNC6(httpd->mgr->urls);
	while (url != NULL) {
		if (FUNC24(httpd->url, url->url) == 0)
			break;
		url = FUNC7(url, link);
	}
	if (url == NULL)
		result = httpd->mgr->render_404(httpd->url, httpd->querystring,
						NULL,
						&httpd->retcode,
						&httpd->retmsg,
						&httpd->mimetype,
						&httpd->bodybuffer,
						&httpd->freecb,
						&httpd->freecb_arg);
	else
		result = url->action(httpd->url, httpd->querystring,
				     url->action_arg,
				     &httpd->retcode, &httpd->retmsg,
				     &httpd->mimetype, &httpd->bodybuffer,
				     &httpd->freecb, &httpd->freecb_arg);
	if (result != ISC_R_SUCCESS) {
		result = httpd->mgr->render_500(httpd->url, httpd->querystring,
						NULL, &httpd->retcode,
						&httpd->retmsg,
						&httpd->mimetype,
						&httpd->bodybuffer,
						&httpd->freecb,
						&httpd->freecb_arg);
		FUNC9(result == ISC_R_SUCCESS);
	}

	FUNC18(httpd);
	FUNC15(httpd, "Content-Type", httpd->mimetype);
	FUNC15(httpd, "Date", datebuf);
	FUNC15(httpd, "Expires", datebuf);
	FUNC15(httpd, "Last-Modified", datebuf);
	FUNC15(httpd, "Pragma: no-cache", NULL);
	FUNC15(httpd, "Cache-Control: no-cache", NULL);
	FUNC15(httpd, "Server: libisc", NULL);
	FUNC16(httpd, "Content-Length",
				FUNC13(&httpd->bodybuffer));
	FUNC17(httpd);  /* done */

	FUNC5(httpd->bufflist, &httpd->headerbuffer, link);
	/*
	 * Link the data buffer into our send queue, should we have any data
	 * rendered into it.  If no data is present, we won't do anything
	 * with the buffer.
	 */
	if (FUNC12(&httpd->bodybuffer) > 0)
		FUNC5(httpd->bufflist, &httpd->bodybuffer, link);

	/* check return code? */
	(void)FUNC20(httpd->sock, &httpd->bufflist, task,
			       isc_httpd_senddone, httpd);

 out:
	FUNC14(&ev);
	FUNC1("recv");
}