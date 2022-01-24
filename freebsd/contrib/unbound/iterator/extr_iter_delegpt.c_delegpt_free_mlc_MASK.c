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
struct delegpt_ns {struct delegpt_ns* name; struct delegpt_ns* tls_auth_name; struct delegpt_ns* next_target; struct delegpt_ns* target_list; struct delegpt_ns* next; struct delegpt_ns* nslist; int /*<<< orphan*/  dp_type_mlc; } ;
struct delegpt_addr {struct delegpt_addr* name; struct delegpt_addr* tls_auth_name; struct delegpt_addr* next_target; struct delegpt_addr* target_list; struct delegpt_addr* next; struct delegpt_addr* nslist; int /*<<< orphan*/  dp_type_mlc; } ;
struct delegpt {struct delegpt* name; struct delegpt* tls_auth_name; struct delegpt* next_target; struct delegpt* target_list; struct delegpt* next; struct delegpt* nslist; int /*<<< orphan*/  dp_type_mlc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delegpt_ns*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct delegpt* dp)
{
	struct delegpt_ns* n, *nn;
	struct delegpt_addr* a, *na;
	if(!dp) return;
	FUNC1(dp->dp_type_mlc);
	n = dp->nslist;
	while(n) {
		nn = n->next;
		FUNC0(n->name);
		FUNC0(n);
		n = nn;
	}
	a = dp->target_list;
	while(a) {
		na = a->next_target;
		FUNC0(a->tls_auth_name);
		FUNC0(a);
		a = na;
	}
	FUNC0(dp->name);
	FUNC0(dp);
}