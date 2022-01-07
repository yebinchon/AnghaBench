
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct _s_x {int dummy; } ;
struct TYPE_3__ {int opcode; int len; int arg1; } ;
typedef TYPE_1__ ipfw_insn ;
typedef enum ipfw_opcodes { ____Placeholder_ipfw_opcodes } ipfw_opcodes ;


 int EX_DATAERR ;
 int F_NOT ;
 int F_OR ;
 int errx (int ,char*,char*) ;
 scalar_t__ fill_flags (struct _s_x*,char*,char**,int*,int*) ;

__attribute__((used)) static void
fill_flags_cmd(ipfw_insn *cmd, enum ipfw_opcodes opcode,
 struct _s_x *flags, char *p)
{
 char *e;
 uint32_t set = 0, clear = 0;

 if (fill_flags(flags, p, &e, &set, &clear) != 0)
  errx(EX_DATAERR, "invalid flag %s", e);

 cmd->opcode = opcode;
 cmd->len = (cmd->len & (F_NOT | F_OR)) | 1;
 cmd->arg1 = (set & 0xff) | ( (clear & 0xff) << 8);
}
