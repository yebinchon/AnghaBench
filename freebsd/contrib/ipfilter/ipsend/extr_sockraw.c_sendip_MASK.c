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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct ether_header {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr_in*,int) ; 

int	FUNC4(int fd, char *pkt, int len)
{
	struct ether_header *eh;
	struct sockaddr_in sin;

	eh = (struct ether_header *)pkt;
	FUNC1((char *)&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	pkt += 14;
	len -= 14;
	FUNC0(pkt + 12, (char *)&sin.sin_addr, 4);

	if (FUNC3(fd, pkt, len, 0, &sin, sizeof(sin)) == -1)
	    {
		FUNC2("send");
		return -1;
	    }

	return len;
}