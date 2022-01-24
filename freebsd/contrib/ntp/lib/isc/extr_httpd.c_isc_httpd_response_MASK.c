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
typedef  scalar_t__ isc_result_t ;
struct TYPE_4__ {char* protocol; char* retmsg; int retcode; int /*<<< orphan*/  headerbuffer; } ;
typedef  TYPE_1__ isc_httpd_t ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int,char*) ; 
 int FUNC5 (char*) ; 

isc_result_t
FUNC6(isc_httpd_t *httpd)
{
	isc_result_t result;
	unsigned int needlen;

	needlen = FUNC5(httpd->protocol) + 1; /* protocol + space */
	needlen += 3 + 1;  /* room for response code, always 3 bytes */
	needlen += FUNC5(httpd->retmsg) + 2;  /* return msg + CRLF */

	while (FUNC2(&httpd->headerbuffer) < needlen) {
		result = FUNC0(httpd);
		if (result != ISC_R_SUCCESS)
			return (result);
	}

	FUNC4(FUNC3(&httpd->headerbuffer), "%s %03d %s\r\n",
		httpd->protocol, httpd->retcode, httpd->retmsg);
	FUNC1(&httpd->headerbuffer, needlen);

	return (ISC_R_SUCCESS);
}