
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* cmd; char* resp_delim; char* term; char* term_cmd; } ;
struct TYPE_8__ {char* cmd; int * term_cmd; int * term; int * resp_delim; } ;
struct TYPE_7__ {char* cmdb; char* cmdw; char* resp_delim; char* term; char* term_cmd; int * cmdll; int * cmdl; } ;
struct TYPE_6__ {char* cmdb; char* cmdw; int * term_cmd; int * term; int * resp_delim; int * cmdll; int * cmdl; } ;
struct TYPE_10__ {int flags; char* cont; char* step; char* stop; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* prompt; char* line_term; int magic; int regnames; int stopbits; int * target; int * cmd_end; int * loadresp; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int init; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_CLR_BREAK_USES_ADDR ;
 int MO_FILL_USES_ADDR ;
 int MO_GETMEM_NEEDS_RANGE ;
 int SERIAL_1_STOPBITS ;
 TYPE_5__ hms_cmds ;
 int hms_inits ;
 int hms_ops ;
 int hms_regnames ;
 int hms_supply_register ;

__attribute__((used)) static void
init_hms_cmds (void)
{
  hms_cmds.flags = MO_CLR_BREAK_USES_ADDR | MO_FILL_USES_ADDR | MO_GETMEM_NEEDS_RANGE;
  hms_cmds.init = hms_inits;
  hms_cmds.cont = "g\r";
  hms_cmds.step = "s\r";
  hms_cmds.stop = "\003";
  hms_cmds.set_break = "b %x\r";
  hms_cmds.clr_break = "b - %x\r";
  hms_cmds.clr_all_break = "b -\r";
  hms_cmds.fill = "f %x %x %x\r";
  hms_cmds.setmem.cmdb = "m.b %x=%x\r";
  hms_cmds.setmem.cmdw = "m.w %x=%x\r";
  hms_cmds.setmem.cmdl = ((void*)0);
  hms_cmds.setmem.cmdll = ((void*)0);
  hms_cmds.setmem.resp_delim = ((void*)0);
  hms_cmds.setmem.term = ((void*)0);
  hms_cmds.setmem.term_cmd = ((void*)0);
  hms_cmds.getmem.cmdb = "m.b %x %x\r";
  hms_cmds.getmem.cmdw = "m.w %x %x\r";
  hms_cmds.getmem.cmdl = ((void*)0);
  hms_cmds.getmem.cmdll = ((void*)0);
  hms_cmds.getmem.resp_delim = ": ";
  hms_cmds.getmem.term = ">";
  hms_cmds.getmem.term_cmd = "\003";
  hms_cmds.setreg.cmd = "r %s=%x\r";
  hms_cmds.setreg.resp_delim = ((void*)0);
  hms_cmds.setreg.term = ((void*)0);
  hms_cmds.setreg.term_cmd = ((void*)0);
  hms_cmds.getreg.cmd = "r %s\r";
  hms_cmds.getreg.resp_delim = " (";
  hms_cmds.getreg.term = ":";
  hms_cmds.getreg.term_cmd = "\003";
  hms_cmds.dump_registers = "r\r";
  hms_cmds.register_pattern = "\\(\\w+\\)=\\([0-9a-fA-F]+\\)";
  hms_cmds.supply_register = hms_supply_register;
  hms_cmds.load_routine = ((void*)0);
  hms_cmds.load = "tl\r";
  hms_cmds.loadresp = ((void*)0);
  hms_cmds.prompt = ">";
  hms_cmds.line_term = "\r";
  hms_cmds.cmd_end = ((void*)0);
  hms_cmds.target = &hms_ops;
  hms_cmds.stopbits = SERIAL_1_STOPBITS;
  hms_cmds.regnames = hms_regnames;
  hms_cmds.magic = MONITOR_OPS_MAGIC;
}
