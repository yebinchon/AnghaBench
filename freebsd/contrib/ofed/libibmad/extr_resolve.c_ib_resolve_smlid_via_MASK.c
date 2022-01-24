#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sm_lid; int /*<<< orphan*/  sm_sl; } ;
typedef  TYPE_1__ umad_port_t ;
struct ibmad_port {int /*<<< orphan*/  portnum; int /*<<< orphan*/  ca_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  sl; } ;
typedef  TYPE_2__ ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(ib_portid_t * sm_id, int timeout,
			 const struct ibmad_port *srcport)
{
	umad_port_t port;
	int ret;

	FUNC2(sm_id, 0, sizeof(*sm_id));

	ret = FUNC3(srcport->ca_name, srcport->portnum, &port);
	if (ret)
		return -1;

	if (!FUNC0(port.sm_lid)) {
		errno = ENXIO;
		return -1;
	}
	sm_id->sl = port.sm_sl;

	ret = FUNC1(sm_id, port.sm_lid, 0, 0);
	FUNC4(&port);
	return ret;
}