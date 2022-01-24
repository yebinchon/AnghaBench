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
typedef  scalar_t__ tcp_seq ;
struct tcphdr {int th_sport; int th_dport; scalar_t__ th_seq; } ;

/* Variables and functions */
 scalar_t__ fixedPort ; 
 scalar_t__ ident ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ port ; 

int
FUNC1(const u_char *data, int seq)
{
	struct tcphdr *const tcp = (struct tcphdr *) data;

	return (FUNC0(tcp->th_sport) == ident
	    && FUNC0(tcp->th_dport) == port + (fixedPort ? 0 : seq)
	    && tcp->th_seq == (tcp_seq)((tcp->th_sport << 16) | tcp->th_dport));
}