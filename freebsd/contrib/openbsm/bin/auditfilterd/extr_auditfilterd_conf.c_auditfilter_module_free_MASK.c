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
struct auditfilter_module {int /*<<< orphan*/ * am_argv; int /*<<< orphan*/ * am_arg_buffer; int /*<<< orphan*/ * am_modulename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct auditfilter_module *am)
{

	if (am->am_modulename != NULL)
		FUNC0(am->am_modulename);
	if (am->am_arg_buffer != NULL)
		FUNC0(am->am_arg_buffer);
	if (am->am_argv != NULL)
		FUNC0(am->am_argv);
}