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
typedef  int /*<<< orphan*/  smp_engine_t ;
typedef  int /*<<< orphan*/  ibnd_node_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ATTR_NODE_DESC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_node_desc ; 

__attribute__((used)) static int FUNC1(smp_engine_t * engine, ib_portid_t * portid,
			   ibnd_node_t * node)
{
	return FUNC0(engine, portid, IB_ATTR_NODE_DESC, 0,
			 recv_node_desc, node);
}