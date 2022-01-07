
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ can_step; } ;
typedef int CORE_ADDR ;


 int ARM_PC_REGNUM ;
 int RDP_STEP ;
 int arm_get_next_pc (int ) ;
 TYPE_1__ ds ;
 int rdp_execute () ;
 int read_register (int ) ;
 int remote_rdp_insert_breakpoint (int ,char*) ;
 int remote_rdp_remove_breakpoint (int ,char*) ;
 int send_rdp (char*,int ,int ,int,int*) ;

__attribute__((used)) static void
rdp_step (void)
{
  if (ds.can_step && 0)
    {


      int status;
      send_rdp ("bbw-S-B",
  RDP_STEP, 0, 1,
  &status);
    }
  else
    {
      char handle[4];
      CORE_ADDR pc = read_register (ARM_PC_REGNUM);
      pc = arm_get_next_pc (pc);
      remote_rdp_insert_breakpoint (pc, handle);
      rdp_execute ();
      remote_rdp_remove_breakpoint (pc, handle);
    }
}
