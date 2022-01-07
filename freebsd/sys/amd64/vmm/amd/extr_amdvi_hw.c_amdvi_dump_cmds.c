
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct amdvi_softc {int cmd_max; scalar_t__ cmd; int dev; struct amdvi_ctrl* ctrl; } ;
struct amdvi_ctrl {int cmd_tail; int cmd_head; } ;
struct amdvi_cmd {int opcode; int word0; int word1; int addr; } ;


 int MOD_DEC (int ,int,int) ;
 int device_printf (int ,char*) ;
 int printf (char*,int,int,int,int,int,int ) ;

__attribute__((used)) static void
amdvi_dump_cmds(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;
 struct amdvi_cmd *cmd;
 int off, i;

 ctrl = softc->ctrl;
 device_printf(softc->dev, "Dump all the commands:\n");




 off = MOD_DEC(ctrl->cmd_head, sizeof(struct amdvi_cmd),
     softc->cmd_max);
 for (i = 0; off != ctrl->cmd_tail &&
     i < softc->cmd_max; i++) {
  cmd = (struct amdvi_cmd *)((uint8_t *)softc->cmd + off);
  printf("  [CMD%d, off:0x%x] opcode= 0x%x 0x%x"
      " 0x%x 0x%lx\n", i, off, cmd->opcode,
      cmd->word0, cmd->word1, cmd->addr);
  off = (off + sizeof(struct amdvi_cmd)) %
      (softc->cmd_max * sizeof(struct amdvi_cmd));
 }
}
