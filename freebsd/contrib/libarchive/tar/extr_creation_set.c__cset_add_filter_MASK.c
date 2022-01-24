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
struct filter_set {int program; char* filter_name; } ;
struct creation_set {int filter_count; struct filter_set* filters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct filter_set*,int) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static void
FUNC3(struct creation_set *cset, int program, const char *filter)
{
	struct filter_set *new_ptr;
	char *new_filter;

	new_ptr = (struct filter_set *)FUNC1(cset->filters,
	    sizeof(*cset->filters) * (cset->filter_count + 1));
	if (new_ptr == NULL)
		FUNC0(1, 0, "No memory");
	new_filter = FUNC2(filter);
	if (new_filter == NULL)
		FUNC0(1, 0, "No memory");
	cset->filters = new_ptr;
	cset->filters[cset->filter_count].program = program;
	cset->filters[cset->filter_count].filter_name = new_filter;
	cset->filter_count++;
}