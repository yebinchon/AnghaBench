#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct buf_pr {int dummy; } ;
struct TYPE_3__ {char const* qid; } ;
typedef  TYPE_1__ ipfw_insn_altq ;

/* Variables and functions */
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf_pr*,char*,char const*) ; 

void
FUNC2(struct buf_pr *bp, ipfw_insn_altq *altqptr)
{
	if (altqptr) {
		const char *qname;

		qname = FUNC0(altqptr->qid);
		if (qname == NULL)
			FUNC1(bp, " altq ?<%u>", altqptr->qid);
		else
			FUNC1(bp, " altq %s", qname);
	}
}