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
struct auditfilter_module_list {int dummy; } ;
struct auditfilter_module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auditfilter_module_list*) ; 
 struct auditfilter_module* FUNC1 (struct auditfilter_module_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct auditfilter_module_list*,struct auditfilter_module*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am_list ; 
 int /*<<< orphan*/  FUNC3 (struct auditfilter_module*) ; 

__attribute__((used)) static void
FUNC4(struct auditfilter_module_list *list)
{
	struct auditfilter_module *am;

	while (!(FUNC0(list))) {
		am = FUNC1(list);
		FUNC2(list, am, am_list);
		FUNC3(am);
	}
}