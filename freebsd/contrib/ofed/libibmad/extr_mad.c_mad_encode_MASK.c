#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void uint8_t ;
struct TYPE_7__ {int id; int mod; } ;
struct TYPE_8__ {int method; int mgtclass; int rstatus; int dataoffs; int oui; int /*<<< orphan*/  datasz; scalar_t__ mask; scalar_t__ mkey; TYPE_1__ attr; scalar_t__ trid; } ;
typedef  TYPE_2__ ib_rpc_t ;
struct TYPE_9__ {scalar_t__ cckey; } ;
typedef  TYPE_3__ ib_rpc_cc_t ;
struct TYPE_10__ {scalar_t__ cnt; int drdlid; int drslid; int /*<<< orphan*/  p; } ;
typedef  TYPE_4__ ib_dr_path_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IB_CC_CCKEY_F ; 
 int IB_CC_CLASS ; 
 int /*<<< orphan*/  IB_DRSMP_DIRECTION_F ; 
 int /*<<< orphan*/  IB_DRSMP_DRDLID_F ; 
 int /*<<< orphan*/  IB_DRSMP_DRSLID_F ; 
 int /*<<< orphan*/  IB_DRSMP_HOPCNT_F ; 
 int /*<<< orphan*/  IB_DRSMP_HOPPTR_F ; 
 int /*<<< orphan*/  IB_DRSMP_PATH_F ; 
 int /*<<< orphan*/  IB_DRSMP_RPATH_F ; 
 int /*<<< orphan*/  IB_DRSMP_STATUS_F ; 
 int /*<<< orphan*/  IB_MAD_ATTRID_F ; 
 int /*<<< orphan*/  IB_MAD_ATTRMOD_F ; 
 int /*<<< orphan*/  IB_MAD_BASEVER_F ; 
 int /*<<< orphan*/  IB_MAD_CLASSVER_F ; 
 int /*<<< orphan*/  IB_MAD_METHOD_F ; 
 int /*<<< orphan*/  IB_MAD_MGMTCLASS_F ; 
 int /*<<< orphan*/  IB_MAD_MKEY_F ; 
 int IB_MAD_RESPONSE ; 
 int /*<<< orphan*/  IB_MAD_RESPONSE_F ; 
 int IB_MAD_SIZE ; 
 int /*<<< orphan*/  IB_MAD_STATUS_F ; 
 int /*<<< orphan*/  IB_MAD_TRID_F ; 
 int IB_SA_CLASS ; 
 int /*<<< orphan*/  IB_SA_COMPMASK_F ; 
 int IB_SMI_DIRECT_CLASS ; 
 scalar_t__ IB_SUBNET_PATH_HOPS_MAX ; 
 int /*<<< orphan*/  IB_VEND2_OUI_F ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,void*,int /*<<< orphan*/ ) ; 

void *FUNC7(void *buf, ib_rpc_t * rpc, ib_dr_path_t * drpath, void *data)
{
	int is_resp = rpc->method & IB_MAD_RESPONSE;
	int mgtclass;

	/* first word */
	FUNC3(buf, 0, IB_MAD_METHOD_F, rpc->method);
	FUNC3(buf, 0, IB_MAD_RESPONSE_F, is_resp ? 1 : 0);
	mgtclass = rpc->mgtclass & 0xff;
	if (mgtclass == IB_SA_CLASS || mgtclass == IB_CC_CLASS)
		FUNC3(buf, 0, IB_MAD_CLASSVER_F, 2);
	else
		FUNC3(buf, 0, IB_MAD_CLASSVER_F, 1);
	FUNC3(buf, 0, IB_MAD_MGMTCLASS_F, rpc->mgtclass & 0xff);
	FUNC3(buf, 0, IB_MAD_BASEVER_F, 1);

	/* second word */
	if ((rpc->mgtclass & 0xff) == IB_SMI_DIRECT_CLASS) {
		if (!drpath) {
			FUNC0("encoding dr mad without drpath (null)");
			errno = EINVAL;
			return NULL;
		}
		if (drpath->cnt >= IB_SUBNET_PATH_HOPS_MAX) {
			FUNC0("dr path with hop count %d", drpath->cnt);
			errno = EINVAL;
			return NULL;
		}
		FUNC3(buf, 0, IB_DRSMP_HOPCNT_F, drpath->cnt);
		FUNC3(buf, 0, IB_DRSMP_HOPPTR_F,
			      is_resp ? drpath->cnt + 1 : 0x0);
		FUNC3(buf, 0, IB_DRSMP_STATUS_F, rpc->rstatus);
		FUNC3(buf, 0, IB_DRSMP_DIRECTION_F, is_resp ? 1 : 0);	/* out */
	} else
		FUNC3(buf, 0, IB_MAD_STATUS_F, rpc->rstatus);

	/* words 3,4,5,6 */
	if (!rpc->trid)
		rpc->trid = FUNC5();

	FUNC4(buf, 0, IB_MAD_TRID_F, rpc->trid);
	FUNC3(buf, 0, IB_MAD_ATTRID_F, rpc->attr.id);
	FUNC3(buf, 0, IB_MAD_ATTRMOD_F, rpc->attr.mod);

	/* words 7,8 */
	FUNC4(buf, 0, IB_MAD_MKEY_F, rpc->mkey);

	if ((rpc->mgtclass & 0xff) == IB_SMI_DIRECT_CLASS) {
		/* word 9 */
		FUNC3(buf, 0, IB_DRSMP_DRDLID_F,
			      drpath->drdlid ? drpath->drdlid : 0xffff);
		FUNC3(buf, 0, IB_DRSMP_DRSLID_F,
			      drpath->drslid ? drpath->drslid : 0xffff);

		/* bytes 128 - 256 - by default should be zero due to memset */
		if (is_resp)
			FUNC2(buf, 0, IB_DRSMP_RPATH_F, drpath->p);
		else
			FUNC2(buf, 0, IB_DRSMP_PATH_F, drpath->p);
	}

	if ((rpc->mgtclass & 0xff) == IB_SA_CLASS)
		FUNC4(buf, 0, IB_SA_COMPMASK_F, rpc->mask);

	if ((rpc->mgtclass & 0xff) == IB_CC_CLASS) {
		ib_rpc_cc_t *rpccc = (ib_rpc_cc_t *)rpc;
		FUNC4(buf, 0, IB_CC_CCKEY_F, rpccc->cckey);
	}

	if (data)
		FUNC6((char *)buf + rpc->dataoffs, data, rpc->datasz);

	/* vendor mads range 2 */
	if (FUNC1(rpc->mgtclass & 0xff))
		FUNC3(buf, 0, IB_VEND2_OUI_F, rpc->oui);

	return (uint8_t *) buf + IB_MAD_SIZE;
}