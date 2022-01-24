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
struct gas_query_pending {int /*<<< orphan*/  resp; int /*<<< orphan*/  adv_proto; int /*<<< orphan*/  req; int /*<<< orphan*/  list; struct gas_query* gas; } ;
struct gas_query {TYPE_1__* work; } ;
struct TYPE_2__ {struct gas_query_pending* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gas_query_pending*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gas_query_pending *query, int del_list)
{
	struct gas_query *gas = query->gas;

	if (del_list)
		FUNC0(&query->list);

	if (gas->work && gas->work->ctx == query) {
		FUNC2(gas->work);
		gas->work = NULL;
	}

	FUNC3(query->req);
	FUNC3(query->adv_proto);
	FUNC3(query->resp);
	FUNC1(query);
}