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
typedef  int /*<<< orphan*/  uint8_t ;
struct ibv_port_attr {int dummy; } ;
struct ibv_context_1_0 {int /*<<< orphan*/  real_context; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ibv_port_attr*) ; 

int FUNC1(struct ibv_context_1_0 *context, uint8_t port_num,
			 struct ibv_port_attr *port_attr)
{
	return FUNC0(context->real_context, port_num, port_attr);
}