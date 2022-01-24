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
struct ibv_rwq_ind_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_rwq_ind_table*) ; 
 int FUNC1 (struct ibv_rwq_ind_table*) ; 

int FUNC2(struct ibv_rwq_ind_table *rwq_ind_table)
{
	int ret;

	ret = FUNC1(rwq_ind_table);

	if (ret)
		return ret;

	FUNC0(rwq_ind_table);
	return 0;
}