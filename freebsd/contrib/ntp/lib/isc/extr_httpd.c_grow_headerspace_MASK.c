#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  base; } ;
typedef  TYPE_2__ isc_region_t ;
struct TYPE_8__ {unsigned int headerlen; TYPE_1__* mgr; int /*<<< orphan*/  headerbuffer; } ;
typedef  TYPE_3__ isc_httpd_t ;
struct TYPE_6__ {int /*<<< orphan*/  mctx; } ;

/* Variables and functions */
 unsigned int HTTP_SENDGROW ; 
 unsigned int HTTP_SEND_MAXLEN ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static isc_result_t
FUNC4(isc_httpd_t *httpd)
{
	char *newspace;
	unsigned int newlen;
	isc_region_t r;

	newlen = httpd->headerlen + HTTP_SENDGROW;
	if (newlen > HTTP_SEND_MAXLEN)
		return (ISC_R_NOSPACE);

	newspace = FUNC2(httpd->mgr->mctx, newlen);
	if (newspace == NULL)
		return (ISC_R_NOMEMORY);
	FUNC0(&httpd->headerbuffer, &r);
	FUNC1(&httpd->headerbuffer, newspace, newlen);

	FUNC3(httpd->mgr->mctx, r.base, r.length);

	return (ISC_R_SUCCESS);
}