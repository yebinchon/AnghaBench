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
struct TYPE_2__ {scalar_t__ qid; int scheduler; int local_flags; } ;
struct pf_altq_node {int /*<<< orphan*/  qstats; TYPE_1__ altq; } ;

/* Variables and functions */
#define  ALTQT_CBQ 132 
#define  ALTQT_CODEL 131 
#define  ALTQT_FAIRQ 130 
#define  ALTQT_HFSC 129 
#define  ALTQT_PRIQ 128 
 int PFALTQ_FLAG_IF_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(int dev, const struct pf_altq_node *a)
{
	if (a->altq.qid == 0 && a->altq.scheduler != ALTQT_CODEL)
		return;

#ifdef __FreeBSD__
	if (a->altq.local_flags & PFALTQ_FLAG_IF_REMOVED)
		return;
#endif
	switch (a->altq.scheduler) {
	case ALTQT_CBQ:
		FUNC0(a->qstats);
		break;
	case ALTQT_PRIQ:
		FUNC4(a->qstats);
		break;
	case ALTQT_HFSC:
		FUNC3(a->qstats);
		break;
	case ALTQT_FAIRQ:
		FUNC2(a->qstats);
		break;
	case ALTQT_CODEL:
		FUNC1(a->qstats);
		break;
	}
}