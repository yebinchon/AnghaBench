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
struct winsize {int dummy; } ;
struct termios {int dummy; } ;

/* Variables and functions */
 int O_NOCTTY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  TIOCSWINSZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (char const*,int) ; 
 int FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC8 (int) ; 

int
FUNC9(int *amaster, int *aslave, char *name, struct termios *termp,
    struct winsize *winp)
{
	const char *slavename;
	int master, slave;

	master = FUNC4(O_RDWR|O_NOCTTY);
	if (master == -1)
		return (-1);

	if (FUNC1(master) == -1)
		goto bad;

	if (FUNC8(master) == -1)
		goto bad;

	slavename = FUNC5(master);
	if (slavename == NULL)
		goto bad;

	slave = FUNC3(slavename, O_RDWR);
	if (slave == -1)
		goto bad;

	*amaster = master;
	*aslave = slave;

	if (name)
		FUNC6(name, slavename);
	if (termp)
		FUNC7(slave, TCSAFLUSH, termp);
	if (winp)
		FUNC2(slave, TIOCSWINSZ, (char *)winp);

	return (0);

bad:	FUNC0(master);
	return (-1);
}