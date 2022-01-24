#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct verbs_device {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {scalar_t__ offset; } ;
struct mlx4_context {TYPE_1__ core_clock; scalar_t__ hca_core_clock; scalar_t__ bf_page; scalar_t__ uar; } ;
struct ibv_context {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  page_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct mlx4_context* FUNC1 (struct ibv_context*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct verbs_device *v_device,
					struct ibv_context *ibv_ctx)
{
	struct mlx4_context *context = FUNC1(ibv_ctx);

	FUNC0(context->uar, FUNC2(&v_device->device)->page_size);
	if (context->bf_page)
		FUNC0(context->bf_page, FUNC2(&v_device->device)->page_size);
	if (context->hca_core_clock)
		FUNC0(context->hca_core_clock - context->core_clock.offset,
		       FUNC2(&v_device->device)->page_size);
}