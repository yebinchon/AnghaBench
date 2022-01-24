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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IWOTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 

char *
FUNC2()
{
	struct stat stbuf;
	register char *pathn;
	extern char *FUNC3();
	extern char *FUNC4();

	/* compute the pathname of the controlling tty */
	if ((pathn = FUNC3(2)) == NULL && (pathn = FUNC3(1)) == NULL &&
	    (pathn = FUNC3(0)) == NULL)
	{
		errno = 0;
		return NULL;
	}

	/* see if we have write permission */
	if (FUNC1(pathn, &stbuf) < 0 || !FUNC0(S_IWOTH, stbuf.st_mode))
	{
		errno = 0;
		return NULL;
	}

	/* see if the user is logged in */
	if (FUNC4() == NULL)
		return NULL;

	/* looks good */
	return pathn;
}