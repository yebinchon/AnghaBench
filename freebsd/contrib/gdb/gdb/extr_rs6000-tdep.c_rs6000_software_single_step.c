
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
struct TYPE_2__ {int address; int data; } ;
typedef int CORE_ADDR ;


 int branch_dest (int,int,int,int) ;
 scalar_t__ errno ;
 int read_memory_integer (int,int) ;
 int read_pc () ;
 char* rs6000_breakpoint_from_pc (int*,int*) ;
 TYPE_1__* stepBreaks ;
 int target_insert_breakpoint (int,int ) ;
 int target_remove_breakpoint (int,int ) ;

void
rs6000_software_single_step (enum target_signal signal,
        int insert_breakpoints_p)
{
  CORE_ADDR dummy;
  int breakp_sz;
  const char *breakp = rs6000_breakpoint_from_pc (&dummy, &breakp_sz);
  int ii, insn;
  CORE_ADDR loc;
  CORE_ADDR breaks[2];
  int opcode;

  if (insert_breakpoints_p)
    {

      loc = read_pc ();

      insn = read_memory_integer (loc, 4);

      breaks[0] = loc + breakp_sz;
      opcode = insn >> 26;
      breaks[1] = branch_dest (opcode, insn, loc, breaks[0]);


      if (breaks[1] == breaks[0])
 breaks[1] = -1;

      stepBreaks[1].address = 0;

      for (ii = 0; ii < 2; ++ii)
 {


   if (breaks[ii] == -1)
     continue;
   target_insert_breakpoint (breaks[ii], stepBreaks[ii].data);
   stepBreaks[ii].address = breaks[ii];
 }

    }
  else
    {


      for (ii = 0; ii < 2; ++ii)
 if (stepBreaks[ii].address != 0)
   target_remove_breakpoint (stepBreaks[ii].address,
        stepBreaks[ii].data);
    }
  errno = 0;

}
