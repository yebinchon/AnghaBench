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
struct sockaddr_raw {int /*<<< orphan*/  sr_ifname; int /*<<< orphan*/  sr_port; int /*<<< orphan*/  sr_family; } ;
typedef  int /*<<< orphan*/  sr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_RAW ; 
 int /*<<< orphan*/  ETHERTYPE_IP ; 
 int /*<<< orphan*/  PF_RAW ; 
 int /*<<< orphan*/  RAWPROTO_DRAIN ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr_raw*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_raw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

int	FUNC6(char *device, int tout)
{
	int fd;
	struct sockaddr_raw sr;

	if ((fd = FUNC4(PF_RAW, SOCK_RAW, RAWPROTO_DRAIN)) < 0)
	    {
		FUNC3("socket(PF_RAW, SOCK_RAW, RAWPROTO_DRAIN)");
		return -1;
	    }

	FUNC2(&sr, 0, sizeof(sr));
	sr.sr_family = AF_RAW;
	sr.sr_port = ETHERTYPE_IP;
	FUNC5(sr.sr_ifname, device, sizeof(sr.sr_ifname));
	if (FUNC0(fd, &sr, sizeof(sr)) < 0)
	    {
		FUNC3("bind AF_RAW");
		FUNC1(fd);
		return -1;
	    }
	return fd;
}