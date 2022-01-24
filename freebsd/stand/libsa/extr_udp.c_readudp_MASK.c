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
typedef  int /*<<< orphan*/  time_t ;
struct udpiphdr {scalar_t__ ui_len; int /*<<< orphan*/  ui_x1; } ;
struct udphdr {scalar_t__ uh_ulen; scalar_t__ uh_dport; scalar_t__ uh_sum; } ;
struct ip {int dummy; } ;
struct iodesc {scalar_t__ myport; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (struct udpiphdr*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (struct iodesc*,void**,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ssize_t
FUNC6(struct iodesc *d, void **pkt, void **payload, time_t tleft)
{
	ssize_t n;
	struct udphdr *uh;
	void *ptr;

#ifdef NET_DEBUG
	if (debug)
		printf("readudp: called\n");
#endif

	uh = NULL;
	ptr = NULL;
	n = FUNC5(d, &ptr, (void **)&uh, tleft, IPPROTO_UDP);
	if (n == -1 || n < sizeof(*uh) || n != FUNC3(uh->uh_ulen)) {
		FUNC1(ptr);
		return (-1);
	}

	if (uh->uh_dport != d->myport) {
#ifdef NET_DEBUG
		if (debug)
			printf("readudp: bad dport %d != %d\n",
				d->myport, ntohs(uh->uh_dport));
#endif
		FUNC1(ptr);
		return (-1);
	}

#ifndef UDP_NO_CKSUM
	if (uh->uh_sum) {
		struct udpiphdr *ui;
		struct ip *ip;
		struct ip tip;

		n = FUNC3(uh->uh_ulen) + sizeof(*ip);

		/* Check checksum (must save and restore ip header) */
		ip = (struct ip *)uh - 1;
		tip = *ip;
		ui = (struct udpiphdr *)ip;
		FUNC0(&ui->ui_x1, sizeof(ui->ui_x1));
		ui->ui_len = uh->uh_ulen;
		if (FUNC2(ui, n) != 0) {
#ifdef NET_DEBUG
			if (debug)
				printf("readudp: bad cksum\n");
#endif
			FUNC1(ptr);
			return (-1);
		}
		*ip = tip;
	}
#endif
	if (FUNC3(uh->uh_ulen) < sizeof(*uh)) {
#ifdef NET_DEBUG
		if (debug)
			printf("readudp: bad udp len %d < %d\n",
				ntohs(uh->uh_ulen), (int)sizeof(*uh));
#endif
		FUNC1(ptr);
		return (-1);
	}

	n = (n > (FUNC3(uh->uh_ulen) - sizeof(*uh))) ? 
	    FUNC3(uh->uh_ulen) - sizeof(*uh) : n;
	*pkt = ptr;
	*payload = (void *)((uintptr_t)uh + sizeof(*uh));
	return (n);
}