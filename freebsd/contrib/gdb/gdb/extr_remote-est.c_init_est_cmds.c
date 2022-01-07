
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* cmd; char* resp_delim; int * term_cmd; int * term; } ;
struct TYPE_8__ {char* cmd; int * term_cmd; int * term; int * resp_delim; } ;
struct TYPE_7__ {char* cmdb; char* cmdw; char* cmdl; char* resp_delim; int * term_cmd; int * term; int * cmdll; } ;
struct TYPE_6__ {char* cmdb; char* cmdw; char* cmdl; int * term_cmd; int * term; int * resp_delim; int * cmdll; } ;
struct TYPE_10__ {int flags; char* cont; char* step; char* stop; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* loadresp; char* prompt; char* line_term; int magic; int regname; int * regnames; int stopbits; int * target; int * cmd_end; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int init; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_CLR_BREAK_USES_ADDR ;
 int MO_FILL_USES_ADDR ;
 int MO_NEED_REGDUMP_AFTER_CONT ;
 int MO_SREC_ACK ;
 int MO_SREC_ACK_PLUS ;
 int SERIAL_1_STOPBITS ;
 TYPE_5__ est_cmds ;
 int est_inits ;
 int est_ops ;
 int est_regname ;
 int est_supply_register ;

__attribute__((used)) static void
init_est_cmds (void)
{
  est_cmds.flags = MO_CLR_BREAK_USES_ADDR | MO_FILL_USES_ADDR | MO_NEED_REGDUMP_AFTER_CONT |
    MO_SREC_ACK | MO_SREC_ACK_PLUS;
  est_cmds.init = est_inits;
  est_cmds.cont = "go\r";
  est_cmds.step = "sidr\r";
  est_cmds.stop = "\003";
  est_cmds.set_break = "sb %x\r";
  est_cmds.clr_break = "rb %x\r";
  est_cmds.clr_all_break = "rb\r";
  est_cmds.fill = "bfb %x %x %x\r";
  est_cmds.setmem.cmdb = "smb %x %x\r";
  est_cmds.setmem.cmdw = "smw %x %x\r";
  est_cmds.setmem.cmdl = "sml %x %x\r";
  est_cmds.setmem.cmdll = ((void*)0);
  est_cmds.setmem.resp_delim = ((void*)0);
  est_cmds.setmem.term = ((void*)0);
  est_cmds.setmem.term_cmd = ((void*)0);
  est_cmds.getmem.cmdb = "dmb %x %x\r";
  est_cmds.getmem.cmdw = "dmw %x %x\r";
  est_cmds.getmem.cmdl = "dml %x %x\r";
  est_cmds.getmem.cmdll = ((void*)0);
  est_cmds.getmem.resp_delim = ": ";
  est_cmds.getmem.term = ((void*)0);
  est_cmds.getmem.term_cmd = ((void*)0);
  est_cmds.setreg.cmd = "sr %s %x\r";
  est_cmds.setreg.resp_delim = ((void*)0);
  est_cmds.setreg.term = ((void*)0);
  est_cmds.setreg.term_cmd = ((void*)0);
  est_cmds.getreg.cmd = "dr %s\r";
  est_cmds.getreg.resp_delim = " = ";
  est_cmds.getreg.term = ((void*)0);
  est_cmds.getreg.term_cmd = ((void*)0);
  est_cmds.dump_registers = "dr\r";
  est_cmds.register_pattern = "\\(\\w+\\) = \\([0-9a-fA-F]+\\)";
  est_cmds.supply_register = est_supply_register;
  est_cmds.load_routine = ((void*)0);
  est_cmds.load = "dl\r";
  est_cmds.loadresp = "+";
  est_cmds.prompt = ">BKM>";
  est_cmds.line_term = "\r";
  est_cmds.cmd_end = ((void*)0);
  est_cmds.target = &est_ops;
  est_cmds.stopbits = SERIAL_1_STOPBITS;
  est_cmds.regnames = ((void*)0);
  est_cmds.regname = est_regname;
  est_cmds.magic = MONITOR_OPS_MAGIC;
}
