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

/* Variables and functions */
 int errno ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pidfh*) ; 
 struct pidfh* FUNC2 (char const*,int,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct pidfh*) ; 
 char const* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

__attribute__((used)) static const char *
FUNC6(void)
{
	const char *fn = "test_pidfile_self";
	struct pidfh *pf1, *pf2;
	pid_t other = 0;
	int serrno;

	FUNC5(fn);
	pf1 = FUNC2(fn, 0600, &other);
	if (pf1 == NULL && other != 0)
		return ("pidfile exists and is locked");
	if (pf1 == NULL)
		return (FUNC4(errno));
	if (FUNC3(pf1) != 0) {
		serrno = errno;
		FUNC1(pf1);
		FUNC5(fn);
		return (FUNC4(serrno));
	}
	// second open should fail
	pf2 = FUNC2(fn, 0600, &other);
	if (pf2 != NULL) {
		FUNC1(pf1);
		FUNC1(pf2);
		FUNC5(fn);
		return ("managed to opened pidfile twice");
	}
	if (other != FUNC0()) {
		FUNC1(pf1);
		FUNC5(fn);
		return ("pidfile contained wrong PID");
	}
	FUNC1(pf1);
	FUNC5(fn);
	return (NULL);
}