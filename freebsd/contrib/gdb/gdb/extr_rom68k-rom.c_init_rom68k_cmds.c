
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
struct TYPE_7__ {char* cmdb; char* cmdw; char* cmdl; char* resp_delim; int * term_cmd; int * term; int * cmdll; } ;
struct TYPE_6__ {char* cmdb; char* cmdw; char* cmdl; int * term_cmd; int * term; int * resp_delim; int * cmdll; } ;
struct TYPE_10__ {char* cont; char* step; char* set_break; char* clr_break; char* clr_all_break; char* fill; char* dump_registers; char* register_pattern; char* load; char* loadresp; char* prompt; char* line_term; char* cmd_end; int magic; int regname; int * regnames; int stopbits; int * target; int * load_routine; int supply_register; TYPE_4__ getreg; TYPE_3__ setreg; TYPE_2__ getmem; TYPE_1__ setmem; int * stop; int init; int flags; } ;


 int MONITOR_OPS_MAGIC ;
 int MO_PRINT_PROGRAM_OUTPUT ;
 int SERIAL_1_STOPBITS ;
 TYPE_5__ rom68k_cmds ;
 int rom68k_inits ;
 int rom68k_ops ;
 int rom68k_regname ;
 int rom68k_supply_register ;

__attribute__((used)) static void
init_rom68k_cmds (void)
{
  rom68k_cmds.flags = MO_PRINT_PROGRAM_OUTPUT;
  rom68k_cmds.init = rom68k_inits;
  rom68k_cmds.cont = "go\r";
  rom68k_cmds.step = "st\r";
  rom68k_cmds.stop = ((void*)0);
  rom68k_cmds.set_break = "db %x\r";
  rom68k_cmds.clr_break = "cb %x\r";
  rom68k_cmds.clr_all_break = "cb *\r";
  rom68k_cmds.fill = "fm %x %x %x\r";
  rom68k_cmds.setmem.cmdb = "pm %x %x\r";
  rom68k_cmds.setmem.cmdw = "pm.w %x %x\r";
  rom68k_cmds.setmem.cmdl = "pm.l %x %x\r";
  rom68k_cmds.setmem.cmdll = ((void*)0);
  rom68k_cmds.setmem.resp_delim = ((void*)0);
  rom68k_cmds.setmem.term = ((void*)0);
  rom68k_cmds.setmem.term_cmd = ((void*)0);
  rom68k_cmds.getmem.cmdb = "dm %x %x\r";
  rom68k_cmds.getmem.cmdw = "dm.w %x %x\r";
  rom68k_cmds.getmem.cmdl = "dm.l %x %x\r";
  rom68k_cmds.getmem.cmdll = ((void*)0);
  rom68k_cmds.getmem.resp_delim = "  ";
  rom68k_cmds.getmem.term = ((void*)0);
  rom68k_cmds.getmem.term_cmd = ((void*)0);
  rom68k_cmds.setreg.cmd = "pr %s %x\r";
  rom68k_cmds.setreg.resp_delim = ((void*)0);
  rom68k_cmds.setreg.term = ((void*)0);
  rom68k_cmds.setreg.term_cmd = ((void*)0);
  rom68k_cmds.getreg.cmd = "pr %s\r";
  rom68k_cmds.getreg.resp_delim = ":  ";
  rom68k_cmds.getreg.term = "= ";
  rom68k_cmds.getreg.term_cmd = ".\r";
  rom68k_cmds.dump_registers = "dr\r";
  rom68k_cmds.register_pattern =
    "\\(\\w+\\)=\\([0-9a-fA-F]+\\( +[0-9a-fA-F]+\\b\\)*\\)";
  rom68k_cmds.supply_register = rom68k_supply_register;
  rom68k_cmds.load_routine = ((void*)0);
  rom68k_cmds.load = "dc\r";
  rom68k_cmds.loadresp = "Waiting for S-records from host... ";
  rom68k_cmds.prompt = "ROM68K :-> ";
  rom68k_cmds.line_term = "\r";
  rom68k_cmds.cmd_end = ".\r";
  rom68k_cmds.target = &rom68k_ops;
  rom68k_cmds.stopbits = SERIAL_1_STOPBITS;
  rom68k_cmds.regnames = ((void*)0);
  rom68k_cmds.regname = rom68k_regname;
  rom68k_cmds.magic = MONITOR_OPS_MAGIC;
}
