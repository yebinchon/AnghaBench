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
struct tube {int sr; int sw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tube*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct tube*) ; 

struct tube* FUNC7(void)
{
	struct tube* tube = (struct tube*)FUNC0(1, sizeof(*tube));
	int sv[2];
	if(!tube) {
		int err = errno;
		FUNC3("tube_create: out of memory");
		errno = err;
		return NULL;
	}
	tube->sr = -1;
	tube->sw = -1;
	if(FUNC4(AF_UNIX, SOCK_STREAM, 0, sv) == -1) {
		int err = errno;
		FUNC3("socketpair: %s", FUNC5(errno));
		FUNC2(tube);
		errno = err;
		return NULL;
	}
	tube->sr = sv[0];
	tube->sw = sv[1];
	if(!FUNC1(tube->sr) || !FUNC1(tube->sw)) {
		int err = errno;
		FUNC3("tube: cannot set nonblocking");
		FUNC6(tube);
		errno = err;
		return NULL;
	}
	return tube;
}