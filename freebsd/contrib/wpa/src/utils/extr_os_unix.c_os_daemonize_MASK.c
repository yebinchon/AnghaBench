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
struct pidfh {int dummy; } ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct pidfh* FUNC7 (char const*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC9 (struct pidfh*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

int FUNC11(const char *pid_file)
{
#if defined(__uClinux__) || defined(__sun__)
	return -1;
#else /* defined(__uClinux__) || defined(__sun__) */
#ifdef __FreeBSD__
	pid_t otherpid;
	struct pidfh *pfh;

	pfh = pidfile_open(pid_file, 0600, &otherpid);
	if (pfh == NULL) {
		if (errno == EEXIST) {
			errx(1, "Daemon already running, pid: %jd.",
			    (intmax_t)otherpid);
		}
		warn("Cannot open or create pidfile.");
	}
#endif /* __FreeBSD__ */

	if (FUNC5(0, 0)) {
		FUNC6("daemon");
#ifdef __FreeBSD__
		pidfile_remove(pfh);
#endif /* __FreeBSD__ */
		return -1;
	}

#ifndef __FreeBSD__
	if (pid_file) {
		FILE *f = FUNC2(pid_file, "w");
		if (f) {
			FUNC3(f, "%u\n", FUNC4());
			FUNC1(f);
		}
	}
#else /* __FreeBSD__ */
	pidfile_write(pfh);
#endif /* __FreeBSD__ */

	return -0;
#endif /* defined(__uClinux__) || defined(__sun__) */
}