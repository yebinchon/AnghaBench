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
struct rdma_cm_id {TYPE_2__* verbs; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int transport_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  IBV_TRANSPORT_IB 129 
#define  IBV_TRANSPORT_IWARP 128 
 int FUNC1 (struct rdma_cm_id*) ; 
 int FUNC2 (struct rdma_cm_id*) ; 

int FUNC3(struct rdma_cm_id *id)
{
	switch (id->verbs->device->transport_type) {
	case IBV_TRANSPORT_IB:
		return FUNC1(id);
	case IBV_TRANSPORT_IWARP:
		return FUNC2(id);
	default:
		return FUNC0(EINVAL);
	}
}