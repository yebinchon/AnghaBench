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
struct group {int /*<<< orphan*/  gr_name; } ;
typedef  int Strbuf ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct group* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  pintr_disabled ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    struct group *gr;

    /*
     * We don't want to get interrupted inside getgrent()
     * because the yellow pages code is not interruptible,
     * and if we call endgrent() immediatetely after
     * (in pintr()) we may be freeing an invalid pointer
     */
    FUNC1(flags);
    FUNC1(dir);
    pintr_disabled++;
#if !defined(_VMS_POSIX) && !defined(_OSD_POSIX) && !defined(WINNT_NATIVE) && !defined(__ANDROID__)
    errno = 0;
    while ((gr = FUNC4()) == NULL && errno == EINTR) {
	FUNC5();
	errno = 0;
    }
#else /* _VMS_POSIX || _OSD_POSIX || WINNT_NATIVE */
    gr = NULL;
#endif /* !_VMS_POSIX && !_OSD_POSIX && !WINNT_NATIVE */
    FUNC2(&pintr_disabled);

    if (gr == NULL) {
#ifdef YPBUGS
	fix_yp_bugs();
#endif
	return 0;
    }
    FUNC0(res, FUNC6(gr->gr_name));
    return 1;
}