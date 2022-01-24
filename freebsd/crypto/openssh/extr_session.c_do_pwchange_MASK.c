#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ttyfd; TYPE_1__* pw; } ;
struct TYPE_4__ {int /*<<< orphan*/  pw_name; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_PASSWD_PROG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC6(Session *s)
{
	FUNC2(NULL);
	FUNC3(stderr, "WARNING: Your password has expired.\n");
	if (s->ttyfd != -1) {
		FUNC3(stderr,
		    "You must change your password now and login again!\n");
#ifdef WITH_SELINUX
		setexeccon(NULL);
#endif
#ifdef PASSWD_NEEDS_USERNAME
		execl(_PATH_PASSWD_PROG, "passwd", s->pw->pw_name,
		    (char *)NULL);
#else
		FUNC0(_PATH_PASSWD_PROG, "passwd", (char *)NULL);
#endif
		FUNC4("passwd");
	} else {
		FUNC3(stderr,
		    "Password change required but no TTY available.\n");
	}
	FUNC1(1);
}