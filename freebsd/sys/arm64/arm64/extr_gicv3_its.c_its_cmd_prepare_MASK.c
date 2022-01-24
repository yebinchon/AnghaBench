#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_8__ ;
typedef  struct TYPE_40__   TYPE_7__ ;
typedef  struct TYPE_39__   TYPE_6__ ;
typedef  struct TYPE_38__   TYPE_5__ ;
typedef  struct TYPE_37__   TYPE_4__ ;
typedef  struct TYPE_36__   TYPE_3__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_21__ ;
typedef  struct TYPE_33__   TYPE_20__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_19__ ;
typedef  struct TYPE_30__   TYPE_18__ ;
typedef  struct TYPE_29__   TYPE_17__ ;
typedef  struct TYPE_28__   TYPE_16__ ;
typedef  struct TYPE_27__   TYPE_15__ ;
typedef  struct TYPE_26__   TYPE_14__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_34__ {TYPE_20__* col; } ;
struct TYPE_31__ {int /*<<< orphan*/  pid; TYPE_18__* its_dev; TYPE_17__* col; } ;
struct TYPE_28__ {TYPE_15__* col; int /*<<< orphan*/  pid; TYPE_14__* its_dev; } ;
struct TYPE_25__ {TYPE_12__* col; int /*<<< orphan*/  pid; int /*<<< orphan*/  id; TYPE_11__* its_dev; } ;
struct TYPE_22__ {int /*<<< orphan*/  valid; TYPE_9__* col; } ;
struct TYPE_41__ {int /*<<< orphan*/  valid; TYPE_7__* its_dev; } ;
struct TYPE_38__ {TYPE_4__* col; } ;
struct TYPE_36__ {TYPE_2__* its_dev; TYPE_1__* col; int /*<<< orphan*/  id; } ;
struct its_cmd_desc {int cmd_type; TYPE_21__ cmd_desc_invall; TYPE_19__ cmd_desc_inv; TYPE_16__ cmd_desc_mapi; TYPE_13__ cmd_desc_mapvi; TYPE_10__ cmd_desc_mapc; TYPE_8__ cmd_desc_mapd; TYPE_5__ cmd_desc_sync; TYPE_3__ cmd_desc_movi; } ;
struct its_cmd {int dummy; } ;
struct TYPE_42__ {int /*<<< orphan*/  col_id; int /*<<< orphan*/  col_target; } ;
struct TYPE_39__ {int /*<<< orphan*/  lpi_num; } ;
struct TYPE_40__ {int /*<<< orphan*/  devid; TYPE_6__ lpis; int /*<<< orphan*/  itt; } ;
struct TYPE_37__ {int /*<<< orphan*/  col_target; } ;
struct TYPE_35__ {int /*<<< orphan*/  devid; } ;
struct TYPE_33__ {int /*<<< orphan*/  col_id; } ;
struct TYPE_32__ {int /*<<< orphan*/  col_id; int /*<<< orphan*/  col_target; } ;
struct TYPE_30__ {int /*<<< orphan*/  devid; } ;
struct TYPE_29__ {int /*<<< orphan*/  col_target; } ;
struct TYPE_27__ {int /*<<< orphan*/  col_id; int /*<<< orphan*/  col_target; } ;
struct TYPE_26__ {int /*<<< orphan*/  devid; } ;
struct TYPE_24__ {int /*<<< orphan*/  col_id; int /*<<< orphan*/  col_target; } ;
struct TYPE_23__ {int /*<<< orphan*/  devid; } ;

/* Variables and functions */
#define  ITS_CMD_INV 135 
#define  ITS_CMD_INVALL 134 
#define  ITS_CMD_MAPC 133 
#define  ITS_CMD_MAPD 132 
#define  ITS_CMD_MAPI 131 
#define  ITS_CMD_MAPTI 130 
#define  ITS_CMD_MOVI 129 
#define  ITS_CMD_SYNC 128 
 int /*<<< orphan*/  ITS_TARGET_NONE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_cmd*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct its_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC13(struct its_cmd *cmd, struct its_cmd_desc *desc)
{
	uint64_t target;
	uint8_t cmd_type;
	u_int size;

	cmd_type = desc->cmd_type;
	target = ITS_TARGET_NONE;

	switch (cmd_type) {
	case ITS_CMD_MOVI:	/* Move interrupt ID to another collection */
		target = desc->cmd_desc_movi.col->col_target;
		FUNC2(cmd, ITS_CMD_MOVI);
		FUNC4(cmd, desc->cmd_desc_movi.id);
		FUNC1(cmd, desc->cmd_desc_movi.col->col_id);
		FUNC3(cmd, desc->cmd_desc_movi.its_dev->devid);
		break;
	case ITS_CMD_SYNC:	/* Wait for previous commands completion */
		target = desc->cmd_desc_sync.col->col_target;
		FUNC2(cmd, ITS_CMD_SYNC);
		FUNC8(cmd, target);
		break;
	case ITS_CMD_MAPD:	/* Assign ITT to device */
		FUNC2(cmd, ITS_CMD_MAPD);
		FUNC5(cmd, FUNC12(desc->cmd_desc_mapd.its_dev->itt));
		/*
		 * Size describes number of bits to encode interrupt IDs
		 * supported by the device minus one.
		 * When V (valid) bit is zero, this field should be written
		 * as zero.
		 */
		if (desc->cmd_desc_mapd.valid != 0) {
			size = FUNC10(desc->cmd_desc_mapd.its_dev->lpis.lpi_num);
			size = FUNC0(1, size) - 1;
		} else
			size = 0;

		FUNC7(cmd, size);
		FUNC3(cmd, desc->cmd_desc_mapd.its_dev->devid);
		FUNC9(cmd, desc->cmd_desc_mapd.valid);
		break;
	case ITS_CMD_MAPC:	/* Map collection to Re-Distributor */
		target = desc->cmd_desc_mapc.col->col_target;
		FUNC2(cmd, ITS_CMD_MAPC);
		FUNC1(cmd, desc->cmd_desc_mapc.col->col_id);
		FUNC9(cmd, desc->cmd_desc_mapc.valid);
		FUNC8(cmd, target);
		break;
	case ITS_CMD_MAPTI:
		target = desc->cmd_desc_mapvi.col->col_target;
		FUNC2(cmd, ITS_CMD_MAPTI);
		FUNC3(cmd, desc->cmd_desc_mapvi.its_dev->devid);
		FUNC4(cmd, desc->cmd_desc_mapvi.id);
		FUNC6(cmd, desc->cmd_desc_mapvi.pid);
		FUNC1(cmd, desc->cmd_desc_mapvi.col->col_id);
		break;
	case ITS_CMD_MAPI:
		target = desc->cmd_desc_mapi.col->col_target;
		FUNC2(cmd, ITS_CMD_MAPI);
		FUNC3(cmd, desc->cmd_desc_mapi.its_dev->devid);
		FUNC4(cmd, desc->cmd_desc_mapi.pid);
		FUNC1(cmd, desc->cmd_desc_mapi.col->col_id);
		break;
	case ITS_CMD_INV:
		target = desc->cmd_desc_inv.col->col_target;
		FUNC2(cmd, ITS_CMD_INV);
		FUNC3(cmd, desc->cmd_desc_inv.its_dev->devid);
		FUNC4(cmd, desc->cmd_desc_inv.pid);
		break;
	case ITS_CMD_INVALL:
		FUNC2(cmd, ITS_CMD_INVALL);
		FUNC1(cmd, desc->cmd_desc_invall.col->col_id);
		break;
	default:
		FUNC11("its_cmd_prepare: Invalid command: %x", cmd_type);
	}

	return (target);
}