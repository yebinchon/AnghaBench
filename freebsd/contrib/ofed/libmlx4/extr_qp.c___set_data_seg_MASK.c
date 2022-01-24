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
struct mlx4_wqe_data_seg {int /*<<< orphan*/  addr; void* lkey; void* byte_count; } ;
struct ibv_sge {int /*<<< orphan*/  addr; int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mlx4_wqe_data_seg *dseg, struct ibv_sge *sg)
{
	dseg->byte_count = FUNC0(sg->length);
	dseg->lkey       = FUNC0(sg->lkey);
	dseg->addr       = FUNC1(sg->addr);
}