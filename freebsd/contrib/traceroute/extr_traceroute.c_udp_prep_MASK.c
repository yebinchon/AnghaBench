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
typedef  int u_short ;
struct udphdr {int uh_sum; void* uh_ulen; void* uh_dport; void* uh_sport; } ;
struct outdata {int seq; } ;

/* Variables and functions */
 scalar_t__ doipcksum ; 
 scalar_t__ fixedPort ; 
 void* FUNC0 (int) ; 
 int ident ; 
 int /*<<< orphan*/  outip ; 
 scalar_t__ outp ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__) ; 
 int port ; 
 scalar_t__ protlen ; 

void
FUNC2(struct outdata *outdata)
{
	struct udphdr *const outudp = (struct udphdr *) outp;

	outudp->uh_sport = FUNC0(ident + (fixedPort ? outdata->seq : 0));
	outudp->uh_dport = FUNC0(port + (fixedPort ? 0 : outdata->seq));
	outudp->uh_ulen = FUNC0((u_short)protlen);
	outudp->uh_sum = 0;
	if (doipcksum) {
	    u_short sum = FUNC1(outip, (u_short*)outudp, protlen, protlen);
	    outudp->uh_sum = (sum) ? sum : 0xffff;
	}

	return;
}