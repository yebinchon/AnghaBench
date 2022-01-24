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
typedef  int /*<<< orphan*/  u_char ;
struct icmp {scalar_t__ icmp_id; scalar_t__ icmp_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int ident ; 

int
FUNC1(const u_char *data, int seq)
{
	struct icmp *const icmpheader = (struct icmp *) data;

	return (icmpheader->icmp_id == FUNC0(ident)
	    && icmpheader->icmp_seq == FUNC0(seq));
}