#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct ib_mad_addr {int grh_present; int hop_limit; scalar_t__ flow_label; scalar_t__ traffic_class; int /*<<< orphan*/  gid; } ;
struct TYPE_13__ {int mgtclass; } ;
typedef  TYPE_3__ ib_rpc_t ;
struct TYPE_12__ {int u; } ;
struct TYPE_11__ {int u; } ;
struct TYPE_14__ {int type; int flags; int status; TYPE_2__ d2; TYPE_1__ d1; } ;
typedef  TYPE_4__ ib_rmpp_hdr_t ;
struct TYPE_16__ {int drslid; } ;
struct TYPE_15__ {int lid; TYPE_7__ drpath; int /*<<< orphan*/  pkey_idx; int /*<<< orphan*/  gid; scalar_t__ grh_present; int /*<<< orphan*/  qp; int /*<<< orphan*/  qkey; int /*<<< orphan*/  sl; } ;
typedef  TYPE_5__ ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SA_RMPP_D1_F ; 
 int /*<<< orphan*/  IB_SA_RMPP_D2_F ; 
 int /*<<< orphan*/  IB_SA_RMPP_FLAGS_F ; 
 int /*<<< orphan*/  IB_SA_RMPP_RESP_F ; 
 int /*<<< orphan*/  IB_SA_RMPP_STATUS_F ; 
 int /*<<< orphan*/  IB_SA_RMPP_TYPE_F ; 
 int /*<<< orphan*/  IB_SA_RMPP_VERS_F ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_7__*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct ib_mad_addr*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 

int FUNC7(void *umad, ib_rpc_t * rpc, ib_portid_t * dport,
		  ib_rmpp_hdr_t * rmpp, void *data)
{
	uint8_t *p, *mad;
	int lid_routed = (rpc->mgtclass & 0xff) != IB_SMI_DIRECT_CLASS;
	int is_smi = ((rpc->mgtclass & 0xff) == IB_SMI_CLASS ||
		      (rpc->mgtclass & 0xff) == IB_SMI_DIRECT_CLASS);
	struct ib_mad_addr addr;

	if (!is_smi)
		FUNC4(umad, dport->lid, dport->qp, dport->sl,
			      dport->qkey);
	else if (lid_routed)
		FUNC4(umad, dport->lid, dport->qp, 0, 0);
	else if ((dport->drpath.drslid != 0xffff) && (dport->lid > 0))
		FUNC4(umad, dport->lid, 0, 0, 0);
	else
		FUNC4(umad, 0xffff, 0, 0, 0);

	if (dport->grh_present && !is_smi) {
		addr.grh_present = 1;
		FUNC2(addr.gid, dport->gid, 16);
		addr.hop_limit = 0xff;
		addr.traffic_class = 0;
		addr.flow_label = 0;
		FUNC5(umad, &addr);
	} else
		FUNC5(umad, 0);
	FUNC6(umad, is_smi ? 0 : dport->pkey_idx);

	mad = FUNC3(umad);
	p = FUNC0(mad, rpc, lid_routed ? 0 : &dport->drpath, data);
	if (!p)
		return -1;

	if (!is_smi && rmpp) {
		FUNC1(mad, 0, IB_SA_RMPP_VERS_F, 1);
		FUNC1(mad, 0, IB_SA_RMPP_TYPE_F, rmpp->type);
		FUNC1(mad, 0, IB_SA_RMPP_RESP_F, 0x3f);
		FUNC1(mad, 0, IB_SA_RMPP_FLAGS_F, rmpp->flags);
		FUNC1(mad, 0, IB_SA_RMPP_STATUS_F, rmpp->status);
		FUNC1(mad, 0, IB_SA_RMPP_D1_F, rmpp->d1.u);
		FUNC1(mad, 0, IB_SA_RMPP_D2_F, rmpp->d2.u);
	}

	return ((int)(p - mad));
}