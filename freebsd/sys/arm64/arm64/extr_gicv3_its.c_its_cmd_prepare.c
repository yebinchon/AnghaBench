
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_9__ ;
typedef struct TYPE_41__ TYPE_8__ ;
typedef struct TYPE_40__ TYPE_7__ ;
typedef struct TYPE_39__ TYPE_6__ ;
typedef struct TYPE_38__ TYPE_5__ ;
typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_21__ ;
typedef struct TYPE_33__ TYPE_20__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_19__ ;
typedef struct TYPE_30__ TYPE_18__ ;
typedef struct TYPE_29__ TYPE_17__ ;
typedef struct TYPE_28__ TYPE_16__ ;
typedef struct TYPE_27__ TYPE_15__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int u_int ;
struct TYPE_34__ {TYPE_20__* col; } ;
struct TYPE_31__ {int pid; TYPE_18__* its_dev; TYPE_17__* col; } ;
struct TYPE_28__ {TYPE_15__* col; int pid; TYPE_14__* its_dev; } ;
struct TYPE_25__ {TYPE_12__* col; int pid; int id; TYPE_11__* its_dev; } ;
struct TYPE_22__ {int valid; TYPE_9__* col; } ;
struct TYPE_41__ {int valid; TYPE_7__* its_dev; } ;
struct TYPE_38__ {TYPE_4__* col; } ;
struct TYPE_36__ {TYPE_2__* its_dev; TYPE_1__* col; int id; } ;
struct its_cmd_desc {int cmd_type; TYPE_21__ cmd_desc_invall; TYPE_19__ cmd_desc_inv; TYPE_16__ cmd_desc_mapi; TYPE_13__ cmd_desc_mapvi; TYPE_10__ cmd_desc_mapc; TYPE_8__ cmd_desc_mapd; TYPE_5__ cmd_desc_sync; TYPE_3__ cmd_desc_movi; } ;
struct its_cmd {int dummy; } ;
struct TYPE_42__ {int col_id; int col_target; } ;
struct TYPE_39__ {int lpi_num; } ;
struct TYPE_40__ {int devid; TYPE_6__ lpis; int itt; } ;
struct TYPE_37__ {int col_target; } ;
struct TYPE_35__ {int devid; } ;
struct TYPE_33__ {int col_id; } ;
struct TYPE_32__ {int col_id; int col_target; } ;
struct TYPE_30__ {int devid; } ;
struct TYPE_29__ {int col_target; } ;
struct TYPE_27__ {int col_id; int col_target; } ;
struct TYPE_26__ {int devid; } ;
struct TYPE_24__ {int col_id; int col_target; } ;
struct TYPE_23__ {int devid; } ;
 int ITS_TARGET_NONE ;
 int MAX (int,int ) ;
 int cmd_format_col (struct its_cmd*,int ) ;
 int cmd_format_command (struct its_cmd*,int const) ;
 int cmd_format_devid (struct its_cmd*,int ) ;
 int cmd_format_id (struct its_cmd*,int ) ;
 int cmd_format_itt (struct its_cmd*,int ) ;
 int cmd_format_pid (struct its_cmd*,int ) ;
 int cmd_format_size (struct its_cmd*,int ) ;
 int cmd_format_target (struct its_cmd*,int ) ;
 int cmd_format_valid (struct its_cmd*,int ) ;
 int fls (int ) ;
 int panic (char*,int) ;
 int vtophys (int ) ;

__attribute__((used)) static uint64_t
its_cmd_prepare(struct its_cmd *cmd, struct its_cmd_desc *desc)
{
 uint64_t target;
 uint8_t cmd_type;
 u_int size;

 cmd_type = desc->cmd_type;
 target = ITS_TARGET_NONE;

 switch (cmd_type) {
 case 129:
  target = desc->cmd_desc_movi.col->col_target;
  cmd_format_command(cmd, 129);
  cmd_format_id(cmd, desc->cmd_desc_movi.id);
  cmd_format_col(cmd, desc->cmd_desc_movi.col->col_id);
  cmd_format_devid(cmd, desc->cmd_desc_movi.its_dev->devid);
  break;
 case 128:
  target = desc->cmd_desc_sync.col->col_target;
  cmd_format_command(cmd, 128);
  cmd_format_target(cmd, target);
  break;
 case 132:
  cmd_format_command(cmd, 132);
  cmd_format_itt(cmd, vtophys(desc->cmd_desc_mapd.its_dev->itt));






  if (desc->cmd_desc_mapd.valid != 0) {
   size = fls(desc->cmd_desc_mapd.its_dev->lpis.lpi_num);
   size = MAX(1, size) - 1;
  } else
   size = 0;

  cmd_format_size(cmd, size);
  cmd_format_devid(cmd, desc->cmd_desc_mapd.its_dev->devid);
  cmd_format_valid(cmd, desc->cmd_desc_mapd.valid);
  break;
 case 133:
  target = desc->cmd_desc_mapc.col->col_target;
  cmd_format_command(cmd, 133);
  cmd_format_col(cmd, desc->cmd_desc_mapc.col->col_id);
  cmd_format_valid(cmd, desc->cmd_desc_mapc.valid);
  cmd_format_target(cmd, target);
  break;
 case 130:
  target = desc->cmd_desc_mapvi.col->col_target;
  cmd_format_command(cmd, 130);
  cmd_format_devid(cmd, desc->cmd_desc_mapvi.its_dev->devid);
  cmd_format_id(cmd, desc->cmd_desc_mapvi.id);
  cmd_format_pid(cmd, desc->cmd_desc_mapvi.pid);
  cmd_format_col(cmd, desc->cmd_desc_mapvi.col->col_id);
  break;
 case 131:
  target = desc->cmd_desc_mapi.col->col_target;
  cmd_format_command(cmd, 131);
  cmd_format_devid(cmd, desc->cmd_desc_mapi.its_dev->devid);
  cmd_format_id(cmd, desc->cmd_desc_mapi.pid);
  cmd_format_col(cmd, desc->cmd_desc_mapi.col->col_id);
  break;
 case 135:
  target = desc->cmd_desc_inv.col->col_target;
  cmd_format_command(cmd, 135);
  cmd_format_devid(cmd, desc->cmd_desc_inv.its_dev->devid);
  cmd_format_id(cmd, desc->cmd_desc_inv.pid);
  break;
 case 134:
  cmd_format_command(cmd, 134);
  cmd_format_col(cmd, desc->cmd_desc_invall.col->col_id);
  break;
 default:
  panic("its_cmd_prepare: Invalid command: %x", cmd_type);
 }

 return (target);
}
