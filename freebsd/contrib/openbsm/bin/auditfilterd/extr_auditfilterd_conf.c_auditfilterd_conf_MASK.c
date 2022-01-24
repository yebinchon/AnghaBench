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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auditfilter_module_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct auditfilter_module_list*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *,struct auditfilter_module_list*) ; 

int
FUNC3(const char *filename, FILE *fp)
{
	struct auditfilter_module_list list;

	FUNC0(&list);
	if (FUNC2(filename, fp, &list) < 0)
		return (-1);

	FUNC1(&list);

	return (0);
}