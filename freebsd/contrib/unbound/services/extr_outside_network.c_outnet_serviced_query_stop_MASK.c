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
struct serviced_query {TYPE_1__* outnet; int /*<<< orphan*/  to_be_deleted; int /*<<< orphan*/  cblist; } ;
struct TYPE_2__ {int /*<<< orphan*/  serviced; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serviced_query*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct serviced_query*) ; 
 int /*<<< orphan*/  FUNC2 (struct serviced_query*) ; 

void FUNC3(struct serviced_query* sq, void* cb_arg)
{
	if(!sq) 
		return;
	FUNC0(sq, cb_arg);
	/* if callbacks() routine scheduled deletion, let it do that */
	if(!sq->cblist && !sq->to_be_deleted) {
		(void)FUNC1(sq->outnet->serviced, sq);
		FUNC2(sq); 
	}
}