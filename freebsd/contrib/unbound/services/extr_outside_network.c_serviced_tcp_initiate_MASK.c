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
struct serviced_query {scalar_t__ status; int /*<<< orphan*/  pending; TYPE_1__* outnet; int /*<<< orphan*/  last_sent_time; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
struct TYPE_2__ {int /*<<< orphan*/ * now_tv; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_CLOSED ; 
 int /*<<< orphan*/  TCP_AUTH_QUERY_TIMEOUT ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct serviced_query*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct serviced_query*) ; 
 int /*<<< orphan*/  FUNC1 (struct serviced_query*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct serviced_query*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ serviced_query_TCP_EDNS ; 
 int /*<<< orphan*/  serviced_tcp_callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC4(struct serviced_query* sq, sldns_buffer* buff)
{
	FUNC3(VERB_ALGO, "initiate TCP query %s", 
		sq->status==serviced_query_TCP_EDNS?"EDNS":"");
	FUNC2(sq, buff, sq->status == serviced_query_TCP_EDNS);
	sq->last_sent_time = *sq->outnet->now_tv;
	sq->pending = FUNC0(sq, buff, TCP_AUTH_QUERY_TIMEOUT,
		serviced_tcp_callback, sq);
	if(!sq->pending) {
		/* delete from tree so that a retry by above layer does not
		 * clash with this entry */
		FUNC3(VERB_ALGO, "serviced_tcp_initiate: failed to send tcp query");
		FUNC1(sq, NETEVENT_CLOSED, NULL, NULL);
	}
}