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
struct rt_spare {scalar_t__ rts_gate; scalar_t__ rts_router; scalar_t__ rts_metric; scalar_t__ rts_tag; scalar_t__ rts_de_ag; scalar_t__ rts_ifp; scalar_t__ rts_time; } ;
struct rt_entry {scalar_t__ rt_ifp; int /*<<< orphan*/  rt_state; struct rt_spare* rt_spares; int /*<<< orphan*/  rt_mask; int /*<<< orphan*/  rt_dst; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ RIP_DEFAULT ; 
 int /*<<< orphan*/  TRACEACTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ftrace ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rt_spare*,int,int,int,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC7(struct rt_entry *rt,
	     struct rt_spare *rts,
	     struct rt_spare *new)
{
	if (!TRACEACTIONS || ftrace == NULL)
		return;

	if (rts->rts_gate == new->rts_gate
	    && rts->rts_router == new->rts_router
	    && rts->rts_metric == new->rts_metric
	    && rts->rts_tag == new->rts_tag
	    && rts->rts_de_ag == new->rts_de_ag)
		return;

	FUNC3();
	if (new->rts_gate == 0) {
		(void)FUNC1(ftrace, "Del #%d %-35s ",
			      (int)(rts - rt->rt_spares),
			      FUNC6(rt->rt_dst, rt->rt_mask, rts->rts_gate));
		FUNC5(rts, 0,0,0,0,
			  (rts != rt->rt_spares
			   || FUNC0(rt->rt_state,new->rts_ifp)));

	} else if (rts->rts_gate != RIP_DEFAULT) {
		(void)FUNC1(ftrace, "Chg #%d %-35s ",
			      (int)(rts - rt->rt_spares),
			      FUNC6(rt->rt_dst, rt->rt_mask, rts->rts_gate));
		FUNC5(rts, 0,0,
			  rts->rts_gate != new->rts_gate,
			  rts->rts_tag != new->rts_tag,
			  rts != rt->rt_spares || FUNC0(rt->rt_state,
							rt->rt_ifp));

		(void)FUNC1(ftrace, "\n       %19s%-16s ", "",
			      (new->rts_gate != rts->rts_gate
			       ? FUNC4(new->rts_gate) : ""));
		FUNC5(new,
			  -(new->rts_metric == rts->rts_metric),
			  -(new->rts_ifp == rts->rts_ifp),
			  0,
			  rts->rts_tag != new->rts_tag,
			  (new->rts_time != rts->rts_time
			   && (rts != rt->rt_spares
			       || FUNC0(rt->rt_state, new->rts_ifp))));

	} else {
		(void)FUNC1(ftrace, "Add #%d %-35s ",
			      (int)(rts - rt->rt_spares),
			      FUNC6(rt->rt_dst, rt->rt_mask, new->rts_gate));
		FUNC5(new, 0,0,0,0,
			  (rts != rt->rt_spares
			   || FUNC0(rt->rt_state,new->rts_ifp)));
	}
	(void)FUNC2('\n',ftrace);
}