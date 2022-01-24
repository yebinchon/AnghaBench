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
typedef  int /*<<< orphan*/  u_long ;
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,char**,struct passwd*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC6(int argc, char **argv)
{
	struct passwd *user_pw;

	FUNC5();	/* must be called before any mallocs */
	/* Ensure that fds 0, 1 and 2 are open or directed to /dev/null */
	FUNC3();

	if ((user_pw = FUNC1(FUNC2())) == NULL) {
		FUNC0(stderr, "No user found for uid %d\n",
		    (u_long)FUNC2());
		return 1;
	}

	return (FUNC4(argc, argv, user_pw));
}