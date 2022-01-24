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
struct ibv_poll_cq_attr {int dummy; } ;
struct ibv_cq_ex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLING_MODE_STALL ; 
 int FUNC0 (struct ibv_cq_ex*,struct ibv_poll_cq_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC1(struct ibv_cq_ex *ibcq,
					   struct ibv_poll_cq_attr *attr)
{
	return FUNC0(ibcq, attr, 0, POLLING_MODE_STALL, 1);
}