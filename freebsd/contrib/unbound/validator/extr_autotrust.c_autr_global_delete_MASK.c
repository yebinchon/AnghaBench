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
struct autr_global_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autr_global_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct autr_global_data*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct autr_global_data* global)
{
	if(!global)
		return;
	/* elements deleted by parent */
	FUNC1(global, 0, sizeof(*global));
	FUNC0(global);
}