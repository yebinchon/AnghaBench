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
struct mlx4_xsrq_table {int num_xsrq; int shift; int mask; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int MLX4_XSRQ_TABLE_BITS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_xsrq_table*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx4_xsrq_table *xsrq_table, int size)
{
	FUNC1(xsrq_table, 0, sizeof *xsrq_table);
	xsrq_table->num_xsrq = size;
	xsrq_table->shift = FUNC0(size) - 1 - MLX4_XSRQ_TABLE_BITS;
	xsrq_table->mask = (1 << xsrq_table->shift) - 1;

	FUNC2(&xsrq_table->mutex, NULL);
}