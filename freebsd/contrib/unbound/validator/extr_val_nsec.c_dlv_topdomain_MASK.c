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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t*,int) ; 

__attribute__((used)) static void
FUNC3(struct ub_packed_rrset_key* nsec, uint8_t* qname,
	uint8_t** nm, size_t* nm_len)
{
	/* make sure reply is part of nm */
	/* take shared topdomain with left of NSEC. */

	/* because, if empty nonterminal, then right is subdomain of qname.
	 * and any shared topdomain would be empty nonterminals.
	 * 
	 * If nxdomain, then the right is bigger, and could have an 
	 * interesting shared topdomain, but if it does have one, it is
	 * an empty nonterminal. An empty nonterminal shared with the left
	 * one. */
	int n;
	uint8_t* common = FUNC1(qname, nsec->rk.dname);
	n = FUNC0(*nm) - FUNC0(common);
	FUNC2(nm, nm_len, n);
}