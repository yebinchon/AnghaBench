#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  base_lid; } ;
typedef  TYPE_2__ umad_port_t ;
struct TYPE_7__ {int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  base_lid; int /*<<< orphan*/  portnum; int /*<<< orphan*/  ca_name; } ;
struct TYPE_9__ {TYPE_1__ umad_port; } ;
typedef  TYPE_3__ osm_vendor_t ;
typedef  int /*<<< orphan*/  ib_api_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ERROR ; 
 int /*<<< orphan*/  IB_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static ib_api_status_t FUNC2(osm_vendor_t * p_vend)
{
	umad_port_t port;
	if (FUNC0(p_vend->umad_port.ca_name,
			  p_vend->umad_port.portnum, &port) < 0)
		return IB_ERROR;
	p_vend->umad_port.base_lid = port.base_lid;
	p_vend->umad_port.sm_lid = port.sm_lid;
	FUNC1(&port);
	return IB_SUCCESS;
}