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
struct addrinfo {int dummy; } ;
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  newif ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (int,char const*,char const*,struct addrinfo*,int,int*,size_t,size_t,int*,int,int,int,int) ; 
 char* FUNC2 (char const*,char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(int stype, const char* ifname, const char* port, 
	struct addrinfo *hints, int v6only, int* noip6, size_t rcv, size_t snd,
	int* reuseport, int transparent, int tcp_mss, int freebind, int use_systemd)
{
	char* s = FUNC2(ifname, '@');
	if(s) {
		/* override port with ifspec@port */
		char p[16];
		char newif[128];
		if((size_t)(s-ifname) >= sizeof(newif)) {
			FUNC0("ifname too long: %s", ifname);
			*noip6 = 0;
			return -1;
		}
		if(FUNC4(s+1) >= sizeof(p)) {
			FUNC0("portnumber too long: %s", ifname);
			*noip6 = 0;
			return -1;
		}
		(void)FUNC3(newif, ifname, sizeof(newif));
		newif[s-ifname] = 0;
		(void)FUNC3(p, s+1, sizeof(p));
		p[FUNC4(s+1)]=0;
		return FUNC1(stype, newif, p, hints, v6only, noip6,
			rcv, snd, reuseport, transparent, tcp_mss, freebind, use_systemd);
	}
	return FUNC1(stype, ifname, port, hints, v6only, noip6, rcv, snd,
		reuseport, transparent, tcp_mss, freebind, use_systemd);
}