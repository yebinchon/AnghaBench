#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_9__ {int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ isc_httpdurl_t ;
struct TYPE_10__ {int /*<<< orphan*/ * mctx; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* ondestroy ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  urls; int /*<<< orphan*/ * timermgr; int /*<<< orphan*/  task; int /*<<< orphan*/  sock; int /*<<< orphan*/  running; } ;
typedef  TYPE_2__ isc_httpdmgr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16(isc_httpdmgr_t *httpdmgr)
{
	isc_mem_t *mctx;
	isc_httpdurl_t *url;

	FUNC0("httpdmgr_destroy");

	FUNC5(&httpdmgr->lock);

	if (!FUNC6(httpdmgr)) {
		FUNC7("httpdmgr_destroy not shutting down yet");
		FUNC8(&httpdmgr->lock);
		return;
	}

	/*
	 * If all clients are not shut down, don't do anything yet.
	 */
	if (!FUNC2(httpdmgr->running)) {
		FUNC7("httpdmgr_destroy clients still active");
		FUNC8(&httpdmgr->lock);
		return;
	}

	FUNC7("httpdmgr_destroy detaching socket, task, and timermgr");

	FUNC13(&httpdmgr->sock);
	FUNC14(&httpdmgr->task);
	httpdmgr->timermgr = NULL;

	/*
	 * Clear out the list of all actions we know about.  Just free the
	 * memory.
	 */
	url = FUNC3(httpdmgr->urls);
	while (url != NULL) {
		FUNC9(httpdmgr->mctx, url->url);
		FUNC4(httpdmgr->urls, url, link);
		FUNC10(httpdmgr->mctx, url, sizeof(isc_httpdurl_t));
		url = FUNC3(httpdmgr->urls);
	}

	FUNC8(&httpdmgr->lock);
	(void)FUNC12(&httpdmgr->lock);

	if (httpdmgr->ondestroy != NULL)
		(httpdmgr->ondestroy)(httpdmgr->cb_arg);

	mctx = httpdmgr->mctx;
	FUNC11(&mctx, httpdmgr, sizeof(isc_httpdmgr_t));

	FUNC1("httpdmgr_destroy");
}