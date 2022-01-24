#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tm ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_rdf ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

ldns_status
FUNC7(ldns_buffer *output, const ldns_rdf *rdf)
{
	/* create a YYYYMMDDHHMMSS string if possible */
	struct tm tm;
	char date_buf[16];

	FUNC4(&tm, 0, sizeof(tm));
	if (FUNC3(FUNC2(rdf), FUNC6(NULL), &tm)
	    && FUNC5(date_buf, 15, "%Y%m%d%H%M%S", &tm)) {
		FUNC0(output, "%s", date_buf);
	}
	return FUNC1(output);
}