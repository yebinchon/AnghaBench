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
struct statfs {int dummy; } ;
struct freebsd11_statfs {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ INO64_FIRST ; 
 int /*<<< orphan*/  SYS_freebsd11_getfsstat ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct freebsd11_statfs*,struct statfs*) ; 
 int FUNC2 (struct statfs*,long,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (struct freebsd11_statfs*) ; 
 struct freebsd11_statfs* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct freebsd11_statfs*,int,int) ; 

int
FUNC6(struct statfs *buf, long bufsize, int flags)
{
	struct freebsd11_statfs *statfs11 = NULL;
	ssize_t len = 0;
	int rv, i;

	if (FUNC0() >= INO64_FIRST)
		return (FUNC2(buf, bufsize, flags));
	if (buf != NULL) {
		len = sizeof(struct freebsd11_statfs) *	/* Round down on purpose to avoid */
		    (bufsize / sizeof(struct statfs));	/* overflow on translation.	  */
		statfs11 = FUNC4(len);
		if (statfs11 == NULL) {
			errno = ENOMEM;
			return (-1);
		}
	}
	rv = FUNC5(SYS_freebsd11_getfsstat, statfs11, len, flags);
	if (rv != -1 && buf != NULL) {
		for (i = 0; i < rv; i++)
			FUNC1(&statfs11[i], &buf[i]);
	}
	FUNC3(statfs11);
	return (rv);
}