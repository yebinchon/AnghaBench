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

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 size_t MUL_NO_OVERFLOW ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

void *
FUNC3(
	void *optr,
	size_t nmemb,
	size_t size,
	size_t extra
#ifdef EREALLOC_CALLSITE		/* ntp_malloc.h */
	,
	const char *	file,
	int		line
#endif
	)
{
	if ((nmemb >= MUL_NO_OVERFLOW || size >= MUL_NO_OVERFLOW) &&
	    nmemb > 0 && SIZE_MAX / nmemb < size) {
#ifndef EREALLOC_CALLSITE
		FUNC2(LOG_ERR, "fatal allocation size overflow");
#else
		msyslog(LOG_ERR,
			"fatal allocation size overflow %s line %d",
			file, line);
#endif
		FUNC1(1);
	}
#ifndef EREALLOC_CALLSITE
	return FUNC0(optr, extra + (size * nmemb), 0, TRUE);
#else
	return ereallocz(optr, extra + (size * nmemb), 0, TRUE, file, line);
#endif
}