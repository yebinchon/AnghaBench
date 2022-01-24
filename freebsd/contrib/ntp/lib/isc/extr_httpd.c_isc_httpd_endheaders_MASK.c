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
struct TYPE_4__ {int /*<<< orphan*/  headerbuffer; } ;
typedef  TYPE_1__ isc_httpd_t ;

/* Variables and functions */
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

isc_result_t
FUNC5(isc_httpd_t *httpd)
{
	isc_result_t result;

	while (FUNC2(&httpd->headerbuffer) < 2) {
		result = FUNC0(httpd);
		if (result != ISC_R_SUCCESS)
			return (result);
	}

	FUNC4(FUNC3(&httpd->headerbuffer), "\r\n");
	FUNC1(&httpd->headerbuffer, 2);

	return (ISC_R_SUCCESS);
}