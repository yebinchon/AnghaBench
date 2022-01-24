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

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PPPDISC ; 
 int /*<<< orphan*/  TIOCSETD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(const char *ttydev)
{
	int		fd;

	if ((fd = FUNC3(ttydev, O_RDWR, 0)) == -1)
		FUNC1(EXIT_FAILURE, "Couldn't open tty(4) device");

#ifdef USE_PPP_DISCIPLINE
	{
		int	opt = PPPDISC;
		if (ioctl(fd, TIOCSETD, &opt) == -1)
			err(EXIT_FAILURE,
			    "Couldn't set tty(4) discipline to PPP");
	}
#endif

	FUNC0(fd);

	return fd;
}