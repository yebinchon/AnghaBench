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
struct passwd {int /*<<< orphan*/  pw_name; } ;
typedef  int Strbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct passwd* FUNC4 () ; 
 int /*<<< orphan*/  pintr_disabled ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct Strbuf *res, struct Strbuf *dir, int *flags)
{
    struct passwd *pw;

    /*
     * We don't want to get interrupted inside getpwent()
     * because the yellow pages code is not interruptible,
     * and if we call endpwent() immediatetely after
     * (in pintr()) we may be freeing an invalid pointer
     */
    FUNC1(flags);
    FUNC1(dir);
    pintr_disabled++;
#ifdef HAVE_GETPWENT
    pw = getpwent();
#else
    pw = NULL;
#endif
    FUNC2(&pintr_disabled);

    if (pw == NULL) {
#ifdef YPBUGS
	fix_yp_bugs();
#endif
	return 0;
    }
    FUNC0(res, FUNC5(pw->pw_name));
    return 1;
}