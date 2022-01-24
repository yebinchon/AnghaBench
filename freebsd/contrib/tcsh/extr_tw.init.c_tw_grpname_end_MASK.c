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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
#ifdef YPBUGS
    fix_yp_bugs();
#endif
#if !defined(_VMS_POSIX) && !defined(_OSD_POSIX) && !defined(WINNT_NATIVE) && !defined (__ANDROID__)
   (void) FUNC0();
#endif /* !_VMS_POSIX && !_OSD_POSIX && !WINNT_NATIVE */
}