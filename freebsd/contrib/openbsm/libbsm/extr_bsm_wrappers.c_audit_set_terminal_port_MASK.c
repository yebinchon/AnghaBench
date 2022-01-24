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
struct stat {int st_rdev; } ;
typedef  int dev_t ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int NODEV ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int kAUBadParamErr ; 
 int kAUNoErr ; 
 int kAUStatErr ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(dev_t *p)
{
	struct stat st;

	if (p == NULL)
		return (kAUBadParamErr);

#ifdef NODEV
	*p = NODEV;
#else
	*p = -1;
#endif

	/* for /usr/bin/login, try fstat() first */
	if (FUNC0(STDIN_FILENO, &st) != 0) {
		if (errno != EBADF) {
			FUNC3(LOG_ERR, "fstat() failed (%s)",
			    FUNC2(errno));
			return (kAUStatErr);
		}
		if (FUNC1("/dev/console", &st) != 0) {
			FUNC3(LOG_ERR, "stat() failed (%s)",
			    FUNC2(errno));
			return (kAUStatErr);
		}
	}
	*p = st.st_rdev;
	return (kAUNoErr);
}