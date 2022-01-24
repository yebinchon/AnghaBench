#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  rport ;
struct TYPE_12__ {void* mod; void* id; } ;
struct TYPE_13__ {int method; int /*<<< orphan*/  timeout; void* mgtclass; TYPE_1__ attr; int /*<<< orphan*/  trid; void* oui; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ ib_rpc_t ;
struct TYPE_14__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ ib_rmpp_hdr_t ;
struct TYPE_15__ {int qp; void* qkey; int /*<<< orphan*/  gid; scalar_t__ grh_present; int /*<<< orphan*/  sl; int /*<<< orphan*/  lid; } ;
typedef  TYPE_4__ ib_portid_t ;
struct TYPE_16__ {int /*<<< orphan*/  gid; scalar_t__ grh_present; int /*<<< orphan*/  sl; int /*<<< orphan*/  qkey; int /*<<< orphan*/  qpn; int /*<<< orphan*/  lid; } ;
typedef  TYPE_5__ ib_mad_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* IB_DEFAULT_QP1_QKEY ; 
 int /*<<< orphan*/  IB_MAD_ATTRID_F ; 
 int /*<<< orphan*/  IB_MAD_ATTRMOD_F ; 
 int IB_MAD_METHOD_GET ; 
 int /*<<< orphan*/  IB_MAD_MGMTCLASS_F ; 
 int IB_MAD_RESPONSE ; 
 int IB_MAD_SIZE ; 
 int /*<<< orphan*/  IB_MAD_TRID_F ; 
 int /*<<< orphan*/  IB_RMPP_FLAG_ACTIVE ; 
 int /*<<< orphan*/  IB_VEND2_OUI_F ; 
 int ibdebug ; 
 scalar_t__ FUNC1 (void*,TYPE_2__*,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  srcport ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC11 (void*) ; 
 TYPE_5__* FUNC12 (void*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC15(void *umad, int size)
{
	ib_rpc_t rpc = { 0 };
	ib_rmpp_hdr_t rmpp = { 0 };
	ib_portid_t rport;
	uint8_t *mad = FUNC11(umad);
	ib_mad_addr_t *mad_addr;

	if (!(mad_addr = FUNC12(umad)))
		return -1;

	FUNC7(&rport, 0, sizeof(rport));

	rport.lid = FUNC9(mad_addr->lid);
	rport.qp = FUNC8(mad_addr->qpn);
	rport.qkey = FUNC8(mad_addr->qkey);
	rport.sl = mad_addr->sl;
	if (!rport.qkey && rport.qp == 1)
		rport.qkey = IB_DEFAULT_QP1_QKEY;
	rport.grh_present = mad_addr->grh_present;
	if (rport.grh_present)
		FUNC6(rport.gid, mad_addr->gid, 16);

	rpc.mgtclass = FUNC2(mad, 0, IB_MAD_MGMTCLASS_F);
	rpc.method = IB_MAD_METHOD_GET | IB_MAD_RESPONSE;
	rpc.attr.id = FUNC2(mad, 0, IB_MAD_ATTRID_F);
	rpc.attr.mod = FUNC2(mad, 0, IB_MAD_ATTRMOD_F);
	rpc.oui = FUNC2(mad, 0, IB_VEND2_OUI_F);
	rpc.trid = FUNC3(mad, 0, IB_MAD_TRID_F);

	if (size > IB_MAD_SIZE)
		rmpp.flags = IB_RMPP_FLAG_ACTIVE;

	FUNC0("responding %d bytes to %s, attr 0x%x mod 0x%x qkey %x",
	      size, FUNC10(&rport), rpc.attr.id, rpc.attr.mod, rport.qkey);

	if (FUNC1(umad, &rpc, &rport, &rmpp, 0) < 0)
		return -1;

	if (ibdebug > 1)
		FUNC14(stderr, "mad respond pkt\n", mad, IB_MAD_SIZE);

	if (FUNC13(FUNC5(srcport),
		      FUNC4(srcport, rpc.mgtclass), umad, size,
		      rpc.timeout, 0) < 0) {
		FUNC0("send failed; %m");
		return -1;
	}

	return 0;
}