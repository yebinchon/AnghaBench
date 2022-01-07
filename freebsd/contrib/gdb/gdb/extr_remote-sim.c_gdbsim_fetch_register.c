
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;

 int MAX_REGISTER_SIZE ;
 int NUM_REGS ;
 int REGISTER_NAME (int) ;
 int REGISTER_SIM_REGNO (int) ;

 int dump_mem (char*,int) ;
 int fprintf_unfiltered (int ,char*,int ,int,int,int,int) ;
 int gdb_assert (int) ;
 int gdb_stderr ;
 int gdbsim_desc ;
 int memset (char*,int ,int) ;
 int printf_filtered (char*,int) ;
 int set_register_cached (int,int) ;
 int sim_fetch_register (int ,int,char*,int) ;
 int sr_get_debug () ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
gdbsim_fetch_register (int regno)
{
  if (regno == -1)
    {
      for (regno = 0; regno < NUM_REGS; regno++)
 gdbsim_fetch_register (regno);
      return;
    }

  switch (REGISTER_SIM_REGNO (regno))
    {
    case 129:
      break;
    case 128:
      {


 char buf[MAX_REGISTER_SIZE];
 int nr_bytes;
 memset (buf, 0, MAX_REGISTER_SIZE);
 supply_register (regno, buf);
 set_register_cached (regno, -1);
 break;
      }
    default:
      {
 static int warn_user = 1;
 char buf[MAX_REGISTER_SIZE];
 int nr_bytes;
 gdb_assert (regno >= 0 && regno < NUM_REGS);
 memset (buf, 0, MAX_REGISTER_SIZE);
 nr_bytes = sim_fetch_register (gdbsim_desc,
           REGISTER_SIM_REGNO (regno),
           buf, DEPRECATED_REGISTER_RAW_SIZE (regno));
 if (nr_bytes > 0 && nr_bytes != DEPRECATED_REGISTER_RAW_SIZE (regno) && warn_user)
   {
     fprintf_unfiltered (gdb_stderr,
    "Size of register %s (%d/%d) incorrect (%d instead of %d))",
    REGISTER_NAME (regno),
    regno, REGISTER_SIM_REGNO (regno),
    nr_bytes, DEPRECATED_REGISTER_RAW_SIZE (regno));
     warn_user = 0;
   }





 supply_register (regno, buf);
 if (sr_get_debug ())
   {
     printf_filtered ("gdbsim_fetch_register: %d", regno);

     dump_mem (buf, DEPRECATED_REGISTER_RAW_SIZE (regno));
   }
 break;
      }
    }
}
