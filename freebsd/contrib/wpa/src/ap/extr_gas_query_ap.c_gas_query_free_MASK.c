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
struct gas_query_pending {int /*<<< orphan*/  resp; int /*<<< orphan*/  adv_proto; int /*<<< orphan*/  req; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gas_query_pending*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gas_query_pending *query, int del_list)
{
	if (del_list)
		FUNC0(&query->list);

	FUNC2(query->req);
	FUNC2(query->adv_proto);
	FUNC2(query->resp);
	FUNC1(query);
}