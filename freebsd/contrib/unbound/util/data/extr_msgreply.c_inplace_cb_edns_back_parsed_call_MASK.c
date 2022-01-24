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
struct module_qstate {int dummy; } ;
struct module_env {struct inplace_cb** inplace_cb_lists; } ;
struct inplace_cb {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  id; scalar_t__ cb; struct inplace_cb* next; } ;
typedef  int /*<<< orphan*/  (* inplace_cb_edns_back_parsed_func_type ) (struct module_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct module_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 
 size_t inplace_cb_edns_back_parsed ; 
 int /*<<< orphan*/  FUNC2 (struct module_qstate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct module_env* env, 
	struct module_qstate* qstate)
{
	struct inplace_cb* cb =
		env->inplace_cb_lists[inplace_cb_edns_back_parsed];
	for(; cb; cb=cb->next) {
		FUNC0(FUNC1(
			*(inplace_cb_edns_back_parsed_func_type*)cb->cb));
		(void)(*(inplace_cb_edns_back_parsed_func_type*)cb->cb)(qstate,
			cb->id, cb->cb_arg);
	}
	return 1;
}