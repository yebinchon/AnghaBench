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
struct pf_osfp_ioctl {int fp_getnum; } ;
typedef  int /*<<< orphan*/  io ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCOSFPGET ; 
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  classes ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (struct pf_osfp_ioctl*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,struct pf_osfp_ioctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_osfp_ioctl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(int dev, int opts)
{
	struct pf_osfp_ioctl io;
	int i;

	FUNC3(&classes);

	for (i = 0; i >= 0; i++) {
		FUNC2(&io, 0, sizeof(io));
		io.fp_getnum = i;
		if (FUNC1(dev, DIOCOSFPGET, &io)) {
			if (errno == EBUSY)
				break;
			FUNC4("DIOCOSFPGET");
			return (1);
		}
		FUNC0(&io);
	}
	return (0);
}