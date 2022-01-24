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
struct fst_group {int dummy; } ;
typedef  int Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_group*) ; 

Boolean FUNC3(struct fst_group *group)
{
	Boolean is_empty = !FUNC1(group) &&
		!FUNC2(group);

	if (is_empty)
		FUNC0(group);

	return is_empty;
}