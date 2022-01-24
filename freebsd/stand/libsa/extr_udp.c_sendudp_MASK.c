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
struct udpiphdr {int /*<<< orphan*/  ui_dst; int /*<<< orphan*/  ui_src; int /*<<< orphan*/  ui_len; int /*<<< orphan*/  ui_pr; } ;
struct udphdr {int /*<<< orphan*/  uh_sum; int /*<<< orphan*/  uh_ulen; int /*<<< orphan*/  uh_dport; int /*<<< orphan*/  uh_sport; } ;
struct ip {int dummy; } ;
struct iodesc {int /*<<< orphan*/  destip; int /*<<< orphan*/  myip; int /*<<< orphan*/  destport; int /*<<< orphan*/  myport; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC0 (struct udpiphdr*,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct udpiphdr*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct iodesc*,struct udphdr*,size_t,int /*<<< orphan*/ ) ; 

ssize_t
FUNC8(struct iodesc *d, void *pkt, size_t len)
{
	ssize_t cc;
	struct udpiphdr *ui;
	struct udphdr *uh;

#ifdef NET_DEBUG
 	if (debug) {
		printf("sendudp: d=%lx called.\n", (long)d);
		if (d) {
			printf("saddr: %s:%d",
			    inet_ntoa(d->myip), ntohs(d->myport));
			printf(" daddr: %s:%d\n",
			    inet_ntoa(d->destip), ntohs(d->destport));
		}
	}
#endif

	ui = (struct udpiphdr *)pkt - 1;
	FUNC0(ui, sizeof(*ui));

	uh = (struct udphdr *)pkt - 1;
	len += sizeof(*uh);

	uh->uh_sport = d->myport;
	uh->uh_dport = d->destport;
	uh->uh_ulen = FUNC1(len);

	ui->ui_pr = IPPROTO_UDP;
	ui->ui_len = uh->uh_ulen;
	ui->ui_src = d->myip;
	ui->ui_dst = d->destip;

#ifndef UDP_NO_CKSUM
	uh->uh_sum = FUNC2(ui, len + sizeof (struct ip));
#endif

	cc = FUNC7(d, uh, len, IPPROTO_UDP);
	if (cc == -1)
		return (-1);
	if (cc != len)
		FUNC5("sendudp: bad write (%zd != %zd)", cc, len);
	return (cc - sizeof(*uh));
}