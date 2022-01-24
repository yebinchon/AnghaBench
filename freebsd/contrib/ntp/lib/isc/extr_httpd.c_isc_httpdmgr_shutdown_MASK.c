#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  task; int /*<<< orphan*/  running; int /*<<< orphan*/  sock; } ;
typedef  TYPE_1__ isc_httpdmgr_t ;
struct TYPE_9__ {int /*<<< orphan*/  sock; } ;
typedef  TYPE_2__ isc_httpd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_SOCKCANCEL_ALL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

void
FUNC8(isc_httpdmgr_t **httpdmgrp)
{
	isc_httpdmgr_t *httpdmgr;
	isc_httpd_t *httpd;
	httpdmgr = *httpdmgrp;
	*httpdmgrp = NULL;

	FUNC0("isc_httpdmgr_shutdown");

	FUNC4(&httpdmgr->lock);

	FUNC5(httpdmgr);

	FUNC7(httpdmgr->sock, httpdmgr->task, ISC_SOCKCANCEL_ALL);

	httpd = FUNC2(httpdmgr->running);
	while (httpd != NULL) {
		FUNC7(httpd->sock, httpdmgr->task,
				  ISC_SOCKCANCEL_ALL);
		httpd = FUNC3(httpd, link);
	}

	FUNC6(&httpdmgr->lock);

	FUNC1("isc_httpdmgr_shutdown");
}