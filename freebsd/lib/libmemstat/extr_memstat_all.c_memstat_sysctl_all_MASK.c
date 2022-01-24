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
struct memory_type_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct memory_type_list*,int) ; 
 scalar_t__ FUNC1 (struct memory_type_list*,int) ; 

int
FUNC2(struct memory_type_list *mtlp, int flags)
{

	if (FUNC0(mtlp, flags) < 0)
		return (-1);
	if (FUNC1(mtlp, flags) < 0)
		return (-1);
	return (0);
}