#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umad ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ib_user_mad {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  smps_on_wire; int /*<<< orphan*/  umad_fd; } ;
typedef  TYPE_3__ smp_engine_t ;
struct TYPE_12__ {scalar_t__ id; int /*<<< orphan*/  mod; } ;
struct TYPE_13__ {TYPE_1__ attr; } ;
struct TYPE_15__ {int (* cb ) (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cb_data; TYPE_2__ rpc; int /*<<< orphan*/  path; } ;
typedef  TYPE_4__ ibnd_smp_t ;
typedef  int /*<<< orphan*/  cl_map_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 scalar_t__ IB_ATTR_MLNX_EXT_PORT_INFO ; 
 int /*<<< orphan*/  IB_DRSMP_STATUS_F ; 
 int IB_MAD_SIZE ; 
 int /*<<< orphan*/  IB_MAD_TRID_F ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(smp_engine_t * engine)
{
	int rc = 0;
	int status = 0;
	ibnd_smp_t *smp;
	uint8_t *mad;
	uint32_t trid;
	uint8_t umad[sizeof(struct ib_user_mad) + IB_MAD_SIZE];
	int length = FUNC14() + IB_MAD_SIZE;

	FUNC6(umad, 0, sizeof(umad));

	/* wait for the next message */
	if ((rc = FUNC13(engine->umad_fd, umad, &length,
			    -1)) < 0) {
		FUNC0("umad_recv failed: %d\n", rc);
		return -1;
	}

	mad = FUNC12(umad);
	trid = (uint32_t) FUNC5(mad, 0, IB_MAD_TRID_F);

	smp = (ibnd_smp_t *) FUNC2(&engine->smps_on_wire, trid);
	if ((cl_map_item_t *) smp == FUNC1(&engine->smps_on_wire)) {
		FUNC0("Failed to find matching smp for trid (%x)\n", trid);
		return -1;
	}

	rc = FUNC9(engine);
	if (rc)
		goto error;

	if ((status = FUNC15(umad))) {
		FUNC0("umad (%s Attr 0x%x:%u) bad status %d; %s\n",
			   FUNC8(&smp->path), smp->rpc.attr.id,
			   smp->rpc.attr.mod, status, FUNC10(status));
		if (smp->rpc.attr.id == IB_ATTR_MLNX_EXT_PORT_INFO)
			rc = FUNC7(engine, smp, mad,
						    smp->cb_data);
	} else if ((status = FUNC4(mad, 0, IB_DRSMP_STATUS_F))) {
		FUNC0("mad (%s Attr 0x%x:%u) bad status 0x%x\n",
			   FUNC8(&smp->path), smp->rpc.attr.id,
			   smp->rpc.attr.mod, status);
		if (smp->rpc.attr.id == IB_ATTR_MLNX_EXT_PORT_INFO)
			rc = FUNC7(engine, smp, mad,
						    smp->cb_data);
	} else
		rc = smp->cb(engine, smp, mad, smp->cb_data);

error:
	FUNC3(smp);
	return rc;
}