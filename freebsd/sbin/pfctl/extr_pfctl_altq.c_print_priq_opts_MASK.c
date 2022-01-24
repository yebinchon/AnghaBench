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
struct priq_opts {int flags; } ;
struct TYPE_2__ {struct priq_opts priq_opts; } ;
struct pf_altq {TYPE_1__ pq_u; } ;

/* Variables and functions */
 int PRCF_CLEARDSCP ; 
 int PRCF_CODEL ; 
 int PRCF_DEFAULTCLASS ; 
 int PRCF_ECN ; 
 int PRCF_RED ; 
 int PRCF_RIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static int
FUNC1(const struct pf_altq *a)
{
	const struct priq_opts	*opts;

	opts = &a->pq_u.priq_opts;

	if (opts->flags) {
		FUNC0("priq(");
		if (opts->flags & PRCF_RED)
			FUNC0(" red");
		if (opts->flags & PRCF_ECN)
			FUNC0(" ecn");
		if (opts->flags & PRCF_RIO)
			FUNC0(" rio");
		if (opts->flags & PRCF_CODEL)
			FUNC0(" codel");
		if (opts->flags & PRCF_CLEARDSCP)
			FUNC0(" cleardscp");
		if (opts->flags & PRCF_DEFAULTCLASS)
			FUNC0(" default");
		FUNC0(" ) ");

		return (1);
	} else
		return (0);
}