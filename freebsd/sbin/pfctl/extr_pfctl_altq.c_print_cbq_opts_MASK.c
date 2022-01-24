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
struct cbq_opts {int flags; } ;
struct TYPE_2__ {struct cbq_opts cbq_opts; } ;
struct pf_altq {TYPE_1__ pq_u; } ;

/* Variables and functions */
 int CBQCLF_BORROW ; 
 int CBQCLF_CLEARDSCP ; 
 int CBQCLF_CODEL ; 
 int CBQCLF_DEFCLASS ; 
 int CBQCLF_ECN ; 
 int CBQCLF_EFFICIENT ; 
 int CBQCLF_FLOWVALVE ; 
 int CBQCLF_RED ; 
 int CBQCLF_RIO ; 
 int CBQCLF_ROOTCLASS ; 
 int CBQCLF_WRR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int
FUNC1(const struct pf_altq *a)
{
	const struct cbq_opts	*opts;

	opts = &a->pq_u.cbq_opts;
	if (opts->flags) {
		FUNC0("cbq(");
		if (opts->flags & CBQCLF_RED)
			FUNC0(" red");
		if (opts->flags & CBQCLF_ECN)
			FUNC0(" ecn");
		if (opts->flags & CBQCLF_RIO)
			FUNC0(" rio");
		if (opts->flags & CBQCLF_CODEL)
			FUNC0(" codel");
		if (opts->flags & CBQCLF_CLEARDSCP)
			FUNC0(" cleardscp");
		if (opts->flags & CBQCLF_FLOWVALVE)
			FUNC0(" flowvalve");
		if (opts->flags & CBQCLF_BORROW)
			FUNC0(" borrow");
		if (opts->flags & CBQCLF_WRR)
			FUNC0(" wrr");
		if (opts->flags & CBQCLF_EFFICIENT)
			FUNC0(" efficient");
		if (opts->flags & CBQCLF_ROOTCLASS)
			FUNC0(" root");
		if (opts->flags & CBQCLF_DEFCLASS)
			FUNC0(" default");
		FUNC0(" ) ");

		return (1);
	} else
		return (0);
}