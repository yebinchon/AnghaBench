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
struct waiting_tcp {scalar_t__ next_waiting; int /*<<< orphan*/ * pkt; } ;
struct serviced_query {scalar_t__ status; int /*<<< orphan*/  node; int /*<<< orphan*/  outnet; scalar_t__ pending; } ;
struct pending_tcp {int dummy; } ;
struct pending {scalar_t__ pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pending_tcp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pending*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ serviced_query_UDP ; 
 scalar_t__ serviced_query_UDP_EDNS ; 
 scalar_t__ serviced_query_UDP_EDNS_FRAG ; 
 scalar_t__ serviced_query_UDP_EDNS_fallback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct waiting_tcp*) ; 
 int /*<<< orphan*/  FUNC6 (struct waiting_tcp*) ; 

__attribute__((used)) static void
FUNC7(struct serviced_query* sq)
{
	if(sq->pending) {
		/* clear up the pending query */
		if(sq->status == serviced_query_UDP_EDNS ||
			sq->status == serviced_query_UDP ||
			sq->status == serviced_query_UDP_EDNS_FRAG ||
			sq->status == serviced_query_UDP_EDNS_fallback) {
			struct pending* p = (struct pending*)sq->pending;
			if(p->pc)
				FUNC3(sq->outnet, p->pc);
			FUNC2(sq->outnet, p);
			/* this call can cause reentrant calls back into the
			 * mesh */
			FUNC1(sq->outnet);
		} else {
			struct waiting_tcp* p = (struct waiting_tcp*)
				sq->pending;
			if(p->pkt == NULL) {
				FUNC0(sq->outnet, 
					(struct pending_tcp*)p->next_waiting);
			} else {
				FUNC5(sq->outnet, p);
				FUNC6(p);
			}
		}
	}
	/* does not delete from tree, caller has to do that */
	FUNC4(&sq->node, NULL);
}