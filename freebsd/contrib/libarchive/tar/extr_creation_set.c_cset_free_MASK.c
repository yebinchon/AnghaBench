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
struct creation_set {struct creation_set* create_format; int /*<<< orphan*/  filter_count; int /*<<< orphan*/  filters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct creation_set*) ; 

void
FUNC2(struct creation_set *cset)
{
	FUNC0(cset->filters, cset->filter_count);
	FUNC1(cset->create_format);
	FUNC1(cset);
}