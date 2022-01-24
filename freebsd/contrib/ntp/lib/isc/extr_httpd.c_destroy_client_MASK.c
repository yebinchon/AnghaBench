#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  mctx; int /*<<< orphan*/  running; } ;
typedef  TYPE_1__ isc_httpdmgr_t ;
struct TYPE_8__ {scalar_t__ headerlen; struct TYPE_8__* headerdata; int /*<<< orphan*/  sock; TYPE_1__* mgr; } ;
typedef  TYPE_2__ isc_httpd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC6(isc_httpd_t **httpdp)
{
	isc_httpd_t *httpd = *httpdp;
	isc_httpdmgr_t *httpdmgr = httpd->mgr;

	*httpdp = NULL;

	FUNC1(&httpdmgr->lock);

	FUNC5(&httpd->sock);
	FUNC0(httpdmgr->running, httpd, link);

	if (httpd->headerlen > 0)
		FUNC4(httpdmgr->mctx, httpd->headerdata,
			    httpd->headerlen);

	FUNC4(httpdmgr->mctx, httpd, sizeof(isc_httpd_t));

	FUNC2(&httpdmgr->lock);

	FUNC3(httpdmgr);
}