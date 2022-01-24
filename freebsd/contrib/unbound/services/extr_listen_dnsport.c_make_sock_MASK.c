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
struct sockaddr {int dummy; } ;
struct addrinfo {int ai_socktype; scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EAI_NONAME ; 
 int EAI_SYSTEM ; 
 int SOCK_DGRAM ; 
 int FUNC0 (struct addrinfo*,int,int*,int*,int,int,int,int) ; 
 int FUNC1 (scalar_t__,int,struct sockaddr*,int /*<<< orphan*/ ,int,int*,int*,int,int,int,int*,int,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*) ; 

__attribute__((used)) static int
FUNC8(int stype, const char* ifname, const char* port, 
	struct addrinfo *hints, int v6only, int* noip6, size_t rcv, size_t snd,
	int* reuseport, int transparent, int tcp_mss, int freebind, int use_systemd)
{
	struct addrinfo *res = NULL;
	int r, s, inuse, noproto;
	hints->ai_socktype = stype;
	*noip6 = 0;
	if((r=FUNC4(ifname, port, hints, &res)) != 0 || !res) {
#ifdef USE_WINSOCK
		if(r == EAI_NONAME && hints->ai_family == AF_INET6){
			*noip6 = 1; /* 'Host not found' for IP6 on winXP */
			return -1;
		}
#endif
		FUNC5("node %s:%s getaddrinfo: %s %s", 
			ifname?ifname:"default", port, FUNC3(r),
#ifdef EAI_SYSTEM
			r==EAI_SYSTEM?(char*)strerror(errno):""
#else
			""
#endif
		);
		return -1;
	}
	if(stype == SOCK_DGRAM) {
		FUNC7(res);
		s = FUNC1(res->ai_family, res->ai_socktype,
			(struct sockaddr*)res->ai_addr, res->ai_addrlen,
			v6only, &inuse, &noproto, (int)rcv, (int)snd, 1,
			reuseport, transparent, freebind, use_systemd);
		if(s == -1 && inuse) {
			FUNC5("bind: address already in use");
		} else if(s == -1 && noproto && hints->ai_family == AF_INET6){
			*noip6 = 1;
		}
	} else	{
		s = FUNC0(res, v6only, &noproto, reuseport,
			transparent, tcp_mss, freebind, use_systemd);
		if(s == -1 && noproto && hints->ai_family == AF_INET6){
			*noip6 = 1;
		}
	}
	FUNC2(res);
	return s;
}