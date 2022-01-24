#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int portnum; int /*<<< orphan*/  port_guid; int /*<<< orphan*/  gid_prefix; int /*<<< orphan*/  sm_sl; int /*<<< orphan*/  base_lid; } ;
typedef  TYPE_1__ umad_port_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  sl; int /*<<< orphan*/  lid; } ;
typedef  TYPE_2__ ibmad_gid_t ;
typedef  TYPE_2__ ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_GID_GUID_F ; 
 int /*<<< orphan*/  IB_GID_PREFIX_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(char *ca_name, uint8_t ca_port, ib_portid_t *portid,
		 int *portnum, ibmad_gid_t *gid)
{
	umad_port_t port;
	uint64_t prefix, guid;
	int rc;

	if (!(portid || portnum || gid))
		return (-1);

	if ((rc = FUNC3(ca_name, ca_port, &port)) < 0)
		return rc;

	if (portid) {
		FUNC2(portid, 0, sizeof(*portid));
		portid->lid = port.base_lid;
		portid->sl = port.sm_sl;
	}
	if (portnum)
		*portnum = port.portnum;
	if (gid) {
		FUNC2(gid, 0, sizeof(*gid));
		prefix = FUNC0(port.gid_prefix);
		guid = FUNC0(port.port_guid);
		FUNC1(*gid, IB_GID_PREFIX_F, &prefix);
		FUNC1(*gid, IB_GID_GUID_F, &guid);
	}

	FUNC4(&port);

	return 0;
}