#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ttl ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  rsin ;
typedef  int /*<<< orphan*/  naddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ EADDRINUSE ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IP_MULTICAST_TTL ; 
 int /*<<< orphan*/  RIP_PORT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int				/* <0 or file descriptor */
FUNC9(naddr addr,
	     int serious)		/* 1=failure to bind is serious */
{
	struct sockaddr_in rsin;
	unsigned char ttl;
	int s;


	if ((s = FUNC8(AF_INET, SOCK_DGRAM, 0)) < 0)
		FUNC0(1,"rip_sock = socket()");

	FUNC6(&rsin, 0, sizeof(rsin));
#ifdef _HAVE_SIN_LEN
	rsin.sin_len = sizeof(rsin);
#endif
	rsin.sin_family = AF_INET;
	rsin.sin_port = FUNC5(RIP_PORT);
	rsin.sin_addr.s_addr = addr;
	if (FUNC2(s, (struct sockaddr *)&rsin, sizeof(rsin)) < 0) {
		if (serious)
			FUNC0(errno != EADDRINUSE, "bind(rip_sock)");
		FUNC3(s);
		return -1;
	}
	FUNC4(s,"rip_sock");

	ttl = 1;
	if (FUNC7(s, IPPROTO_IP, IP_MULTICAST_TTL,
		       &ttl, sizeof(ttl)) < 0)
		FUNC1(1,"rip_sock setsockopt(IP_MULTICAST_TTL)");

	return s;
}