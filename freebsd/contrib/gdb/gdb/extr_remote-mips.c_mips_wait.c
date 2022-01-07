
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer; void* sig; } ;
struct target_waitstatus {TYPE_1__ value; void* kind; } ;
typedef int ptid_t ;
struct TYPE_4__ {scalar_t__ addr; scalar_t__ type; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BREAK_FETCH ;
 int DATA_MAXLEN ;
 int DEPRECATED_FP_REGNUM ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_LSI_BREAKPOINTS ;
 int MAX_REGISTER_SIZE ;
 scalar_t__ MON_PMON ;
 int PC_REGNUM ;
 int SP_REGNUM ;
 void* TARGET_SIGNAL_TRAP ;
 void* TARGET_WAITKIND_EXITED ;
 void* TARGET_WAITKIND_SIGNALLED ;
 void* TARGET_WAITKIND_STOPPED ;
 int errno ;
 int find_pc_partial_function (scalar_t__,char**,scalar_t__*,int *) ;
 int hit_watchpoint ;
 int inferior_ptid ;
 scalar_t__ interrupt_count ;
 TYPE_2__* lsi_breakpoints ;
 int mips_enter_debug () ;
 int mips_error (char*,int ) ;
 int mips_exit_debug () ;
 scalar_t__ mips_monitor ;
 int mips_need_reply ;
 int mips_request (char,int ,int ,int*,int,char*) ;
 void* mips_signal_from_protocol (int) ;
 int mips_wait_flag ;
 scalar_t__ read_pc () ;
 int safe_strerror (int ) ;
 int sscanf (char*,char*,int*,int*,int*,char*) ;
 int store_unsigned_integer (char*,int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int supply_register (int,char*) ;
 char* target_shortname ;

__attribute__((used)) static ptid_t
mips_wait (ptid_t ptid, struct target_waitstatus *status)
{
  int rstatus;
  int err;
  char buff[DATA_MAXLEN];
  int rpc, rfp, rsp;
  char flags[20];
  int nfields;
  int i;

  interrupt_count = 0;
  hit_watchpoint = 0;




  if (!mips_need_reply)
    {
      status->kind = TARGET_WAITKIND_STOPPED;
      status->value.sig = TARGET_SIGNAL_TRAP;
      return inferior_ptid;
    }


  mips_wait_flag = 1;
  rstatus = mips_request ('\000', 0, 0, &err, -1, buff);
  mips_wait_flag = 0;
  if (err)
    mips_error ("Remote failure: %s", safe_strerror (errno));
  if (mips_monitor == MON_PMON)
    {
      mips_exit_debug ();
      mips_enter_debug ();
    }



  nfields = sscanf (buff, "0x%*x %*c 0x%*x 0x%*x 0x%x 0x%x 0x%x 0x%*x %s",
      &rpc, &rfp, &rsp, flags);
  if (nfields >= 3)
    {
      char buf[MAX_REGISTER_SIZE];

      store_unsigned_integer (buf, DEPRECATED_REGISTER_RAW_SIZE (PC_REGNUM), rpc);
      supply_register (PC_REGNUM, buf);

      store_unsigned_integer (buf, DEPRECATED_REGISTER_RAW_SIZE (PC_REGNUM), rfp);
      supply_register (30, buf);

      store_unsigned_integer (buf, DEPRECATED_REGISTER_RAW_SIZE (SP_REGNUM), rsp);
      supply_register (SP_REGNUM, buf);

      store_unsigned_integer (buf, DEPRECATED_REGISTER_RAW_SIZE (DEPRECATED_FP_REGNUM), 0);
      supply_register (DEPRECATED_FP_REGNUM, buf);

      if (nfields == 9)
 {
   int i;

   for (i = 0; i <= 2; i++)
     if (flags[i] == 'r' || flags[i] == 'w')
       hit_watchpoint = 1;
     else if (flags[i] == '\000')
       break;
 }
    }

  if (strcmp (target_shortname, "lsi") == 0)
    {
      if (nfields == 1 && rpc == 1)
 hit_watchpoint = 1;

    }
  if ((rstatus & 0xff) == 0)
    {
      status->kind = TARGET_WAITKIND_EXITED;
      status->value.integer = (((rstatus) >> 8) & 0xff);
    }
  else if ((rstatus & 0xff) == 0x7f)
    {
      status->kind = TARGET_WAITKIND_STOPPED;
      status->value.sig = mips_signal_from_protocol (((rstatus) >> 8) & 0xff);




      if (strcmp (target_shortname, "lsi") == 0)
 {
   char *func_name;
   CORE_ADDR func_start;
   CORE_ADDR pc = read_pc ();

   find_pc_partial_function (pc, &func_name, &func_start, ((void*)0));
   if (func_name != ((void*)0) && strcmp (func_name, "_exit") == 0
       && func_start == pc)
     status->kind = TARGET_WAITKIND_EXITED;
 }
    }
  else
    {
      status->kind = TARGET_WAITKIND_SIGNALLED;
      status->value.sig = mips_signal_from_protocol (rstatus & 0x7f);
    }

  return inferior_ptid;
}
