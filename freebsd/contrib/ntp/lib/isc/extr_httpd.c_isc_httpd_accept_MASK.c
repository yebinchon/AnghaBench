#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_19__ {scalar_t__ result; int /*<<< orphan*/  newsocket; } ;
typedef  TYPE_1__ isc_socket_newconnev_t ;
typedef  int /*<<< orphan*/  isc_sockaddr_t ;
typedef  scalar_t__ isc_result_t ;
struct TYPE_20__ {unsigned char* base; scalar_t__ length; } ;
typedef  TYPE_2__ isc_region_t ;
struct TYPE_21__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  sock; int /*<<< orphan*/  mctx; int /*<<< orphan*/  running; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* client_ok ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ isc_httpdmgr_t ;
struct TYPE_22__ {int headerlen; int /*<<< orphan*/  sock; scalar_t__ recvbuf; int /*<<< orphan*/  bodybuffer; int /*<<< orphan*/  bufflist; int /*<<< orphan*/ * headerdata; int /*<<< orphan*/  headerbuffer; scalar_t__ flags; TYPE_3__* mgr; } ;
typedef  TYPE_4__ isc_httpd_t ;
struct TYPE_23__ {TYPE_3__* ev_arg; } ;
typedef  TYPE_5__ isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ HTTP_RECVLEN ; 
 int HTTP_SENDGROW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISC_R_CANCELED ; 
 scalar_t__ ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__**) ; 
 int /*<<< orphan*/  isc_httpd_recvdone ; 
 void* FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (int /*<<< orphan*/ *,TYPE_5__*),TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC24(isc_task_t *task, isc_event_t *ev)
{
	isc_result_t result;
	isc_httpdmgr_t *httpdmgr = ev->ev_arg;
	isc_httpd_t *httpd;
	isc_region_t r;
	isc_socket_newconnev_t *nev = (isc_socket_newconnev_t *)ev;
	isc_sockaddr_t peeraddr;

	FUNC0("accept");

	FUNC6(&httpdmgr->lock);
	if (FUNC7(httpdmgr)) {
		FUNC8("accept shutting down, goto out");
		goto out;
	}

	if (nev->result == ISC_R_CANCELED) {
		FUNC8("accept canceled, goto out");
		goto out;
	}

	if (nev->result != ISC_R_SUCCESS) {
		/* XXXMLG log failure */
		FUNC8("accept returned failure, goto requeue");
		goto requeue;
	}

	(void)FUNC19(nev->newsocket, &peeraddr);
	if (httpdmgr->client_ok != NULL &&
	    !(httpdmgr->client_ok)(&peeraddr, httpdmgr->cb_arg)) {
		FUNC18(&nev->newsocket);
		goto requeue;
	}

	httpd = FUNC15(httpdmgr->mctx, sizeof(isc_httpd_t));
	if (httpd == NULL) {
		/* XXXMLG log failure */
		FUNC8("accept failed to allocate memory, goto requeue");
		FUNC18(&nev->newsocket);
		goto requeue;
	}

	httpd->mgr = httpdmgr;
	FUNC3(httpd, link);
	FUNC4(httpdmgr->running, httpd, link);
	FUNC2(httpd);
	httpd->sock = nev->newsocket;
	FUNC21(httpd->sock, "httpd", NULL);
	httpd->flags = 0;

	/*
	 * Initialize the buffer for our headers.
	 */
	httpd->headerdata = FUNC15(httpdmgr->mctx, HTTP_SENDGROW);
	if (httpd->headerdata == NULL) {
		FUNC16(httpdmgr->mctx, httpd, sizeof(isc_httpd_t));
		FUNC18(&nev->newsocket);
		goto requeue;
	}
	httpd->headerlen = HTTP_SENDGROW;
	FUNC12(&httpd->headerbuffer, httpd->headerdata,
			httpd->headerlen);

	FUNC5(httpd->bufflist);

	FUNC13(&httpd->bodybuffer);
	FUNC22(httpd);

	r.base = (unsigned char *)httpd->recvbuf;
	r.length = HTTP_RECVLEN - 1;
	result = FUNC20(httpd->sock, &r, 1, task, isc_httpd_recvdone,
				 httpd);
	/* FIXME!!! */
	FUNC9(result);
	FUNC8("accept queued recv on socket");

 requeue:
	result = FUNC17(httpdmgr->sock, task, isc_httpd_accept,
				   httpdmgr);
	if (result != ISC_R_SUCCESS) {
		/* XXXMLG what to do?  Log failure... */
		FUNC8("accept could not reaccept due to failure");
	}

 out:
	FUNC10(&httpdmgr->lock);

	FUNC11(httpdmgr);

	FUNC14(&ev);

	FUNC1("accept");
}