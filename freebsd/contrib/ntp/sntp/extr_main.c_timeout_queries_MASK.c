#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct timeval {long tv_sec; } ;
struct TYPE_8__ {scalar_t__ stime; TYPE_1__* dctx; int /*<<< orphan*/  addr; scalar_t__ done; struct TYPE_8__* link; } ;
typedef  TYPE_2__ sent_pkt ;
struct TYPE_9__ {long tv_sec; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__**) ; 
#define  CTX_BCST 129 
#define  CTX_UCST 128 
 int CTX_xCST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__** fam_listheads ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timeval*) ; 
 long response_timeout ; 
 int /*<<< orphan*/  shutting_down ; 
 TYPE_4__ start_tv ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(void)
{
	struct timeval	start_cb;
	u_int		idx;
	sent_pkt *	head;
	sent_pkt *	spkt;
	sent_pkt *	spkt_next;
	long		age;
	int didsomething = 0;

	FUNC2(3, ("timeout_queries: called to check %u items\n",
		  (unsigned)FUNC0(fam_listheads)));

	FUNC4(base, &start_cb);
	for (idx = 0; idx < FUNC0(fam_listheads); idx++) {
		head = fam_listheads[idx];
		for (spkt = head; spkt != NULL; spkt = spkt_next) {
			char xcst;

			didsomething = 1;
			switch (spkt->dctx->flags & CTX_xCST) {
			    case CTX_BCST:
				xcst = 'B';
				break;

			    case CTX_UCST:
				xcst = 'U';
				break;

			    default:
				FUNC1(!"spkt->dctx->flags neither UCST nor BCST");
				break;
			}

			spkt_next = spkt->link;
			if (0 == spkt->stime || spkt->done)
				continue;
			age = start_cb.tv_sec - spkt->stime;
			FUNC2(3, ("%s %s %cCST age %ld\n",
				  FUNC5(&spkt->addr),
				  spkt->dctx->name, xcst, age));
			if (age > response_timeout)
				FUNC6(spkt);
		}
	}
	// Do we care about didsomething?
	FUNC2(3, ("timeout_queries: didsomething is %d, age is %ld\n",
		  didsomething, (long) (start_cb.tv_sec - start_tv.tv_sec)));
	if (start_cb.tv_sec - start_tv.tv_sec > response_timeout) {
		FUNC2(3, ("timeout_queries: bail!\n"));
		FUNC3(base, NULL);
		shutting_down = TRUE;
	}
}