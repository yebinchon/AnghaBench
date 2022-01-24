#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct mlx4_xsrq_table {int num_xsrq; int shift; int mask; int /*<<< orphan*/  mutex; TYPE_1__* xsrq_table; } ;
struct mlx4_srq {int dummy; } ;
struct TYPE_2__ {struct mlx4_srq** table; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct mlx4_srq** FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mlx4_xsrq_table *xsrq_table, uint32_t srqn,
		    struct mlx4_srq *srq)
{
	int index, ret = 0;

	index = (srqn & (xsrq_table->num_xsrq - 1)) >> xsrq_table->shift;
	FUNC1(&xsrq_table->mutex);
	if (!xsrq_table->xsrq_table[index].refcnt) {
		xsrq_table->xsrq_table[index].table = FUNC0(xsrq_table->mask + 1,
							     sizeof(struct mlx4_srq *));
		if (!xsrq_table->xsrq_table[index].table) {
			ret = -1;
			goto out;
		}
	}

	xsrq_table->xsrq_table[index].refcnt++;
	xsrq_table->xsrq_table[index].table[srqn & xsrq_table->mask] = srq;

out:
	FUNC2(&xsrq_table->mutex);
	return ret;
}