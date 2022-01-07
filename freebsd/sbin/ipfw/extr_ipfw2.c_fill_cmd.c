
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int opcode; int len; int arg1; } ;
typedef TYPE_1__ ipfw_insn ;
typedef enum ipfw_opcodes { ____Placeholder_ipfw_opcodes } ipfw_opcodes ;


 int F_NOT ;
 int F_OR ;

__attribute__((used)) static void
fill_cmd(ipfw_insn *cmd, enum ipfw_opcodes opcode, int flags, uint16_t arg)
{
 cmd->opcode = opcode;
 cmd->len = ((cmd->len | flags) & (F_NOT | F_OR)) | 1;
 cmd->arg1 = arg;
}
