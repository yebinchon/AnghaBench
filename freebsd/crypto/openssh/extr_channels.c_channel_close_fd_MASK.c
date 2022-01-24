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
struct ssh_channels {int channel_max_fd; } ;
struct ssh {struct ssh_channels* chanctxt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ssh_channels*) ; 
 int FUNC1 (int) ; 

int
FUNC2(struct ssh *ssh, int *fdp)
{
	struct ssh_channels *sc = ssh->chanctxt;
	int ret = 0, fd = *fdp;

	if (fd != -1) {
		ret = FUNC1(fd);
		*fdp = -1;
		if (fd == sc->channel_max_fd)
			FUNC0(sc);
	}
	return ret;
}