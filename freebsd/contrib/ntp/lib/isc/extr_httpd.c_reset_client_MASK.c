#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bodybuffer; int /*<<< orphan*/  headerbuffer; scalar_t__ flags; int /*<<< orphan*/ * protocol; int /*<<< orphan*/ * querystring; int /*<<< orphan*/ * url; int /*<<< orphan*/  method; scalar_t__ recvlen; scalar_t__* recvbuf; } ;
typedef  TYPE_1__ isc_httpd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ISC_HTTPD_METHODUNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC5(isc_httpd_t *httpd)
{
	/*
	 * Catch errors here.  We MUST be in RECV mode, and we MUST NOT have
	 * any outstanding buffers.  If we have buffers, we have a leak.
	 */
	FUNC0(FUNC1(httpd));
	FUNC0(!FUNC2(&httpd->headerbuffer, link));
	FUNC0(!FUNC2(&httpd->bodybuffer, link));

	httpd->recvbuf[0] = 0;
	httpd->recvlen = 0;
	httpd->method = ISC_HTTPD_METHODUNKNOWN;
	httpd->url = NULL;
	httpd->querystring = NULL;
	httpd->protocol = NULL;
	httpd->flags = 0;

	FUNC3(&httpd->headerbuffer);
	FUNC4(&httpd->bodybuffer);
}