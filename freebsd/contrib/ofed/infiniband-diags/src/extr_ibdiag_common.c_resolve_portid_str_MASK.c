#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct ibmad_port {int dummy; } ;
typedef  int /*<<< orphan*/  ibmad_gid_t ;
struct TYPE_11__ {int /*<<< orphan*/  lid; int /*<<< orphan*/  drpath; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ ib_portid_t ;
typedef  enum MAD_DEST { ____Placeholder_MAD_DEST } MAD_DEST ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  IB_DEST_DRPATH 132 
#define  IB_DEST_DRSLID 131 
#define  IB_DEST_GID 130 
#define  IB_DEST_GUID 129 
#define  IB_DEST_LID 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,struct ibmad_port const*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,struct ibmad_port const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(char *ca_name, uint8_t ca_port, ib_portid_t * portid,
		       char *addr_str, enum MAD_DEST dest_type,
		       ib_portid_t *sm_id, const struct ibmad_port *srcport)
{
	ibmad_gid_t gid;
	uint64_t guid;
	int lid;
	char *routepath;
	ib_portid_t selfportid = { 0 };
	int selfport = 0;

	FUNC4(portid, 0, sizeof *portid);

	switch (dest_type) {
	case IB_DEST_LID:
		lid = FUNC9(addr_str, 0, 0);
		if (!FUNC1(lid))
			return -1;
		return FUNC2(portid, lid, 0, 0);

	case IB_DEST_DRPATH:
		if (FUNC8(&portid->drpath, addr_str, 0, 0) < 0)
			return -1;
		return 0;

	case IB_DEST_GUID:
		if (!(guid = FUNC10(addr_str, 0, 0)))
			return -1;

		/* keep guid in portid? */
		return FUNC6(ca_name, ca_port, portid, &guid, sm_id,
				    srcport);

	case IB_DEST_DRSLID:
		lid = FUNC9(addr_str, &routepath, 0);
		routepath++;
		if (!FUNC1(lid))
			return -1;
		FUNC2(portid, lid, 0, 0);

		/* handle DR parsing and set DrSLID to local lid */
		if (FUNC7(ca_name, ca_port, &selfportid, &selfport,
				 NULL) < 0)
			return -1;
		if (FUNC8(&portid->drpath, routepath, selfportid.lid, 0) <
		    0)
			return -1;
		return 0;

	case IB_DEST_GID:
		if (FUNC3(AF_INET6, addr_str, &gid) <= 0)
			return -1;
		return FUNC5(ca_name, ca_port, portid, gid, sm_id,
				   srcport);
	default:
		FUNC0("bad dest_type %d", dest_type);
	}

	return -1;
}