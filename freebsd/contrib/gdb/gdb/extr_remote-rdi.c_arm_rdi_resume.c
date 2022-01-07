
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef int PointHandle ;
typedef int CORE_ADDR ;


 int ARM_PC_REGNUM ;
 int RDIError_BreakpointReached ;
 int RDIError_NoError ;
 int angel_RDI_execute (int *) ;
 int angel_RDI_step (int,int *) ;
 int arm_get_next_pc (int ) ;
 int arm_rdi_insert_breakpoint (int ,char*) ;
 int arm_rdi_remove_breakpoint (int ,char*) ;
 int execute_status ;
 int printf_filtered (char*,int ) ;
 int rdi_error_message (int) ;
 int read_register (int ) ;

__attribute__((used)) static void
arm_rdi_resume (ptid_t ptid, int step, enum target_signal siggnal)
{
  int rslt;
  PointHandle point;

  if (0 )
    {
      rslt = angel_RDI_step (1, &point);
      if (rslt != RDIError_NoError)
 printf_filtered ("RDI_step: %s\n", rdi_error_message (rslt));
    }
  else
    {
      char handle[4];
      CORE_ADDR pc = 0;

      if (step)
 {
   pc = read_register (ARM_PC_REGNUM);
   pc = arm_get_next_pc (pc);
   arm_rdi_insert_breakpoint (pc, handle);
 }

      execute_status = rslt = angel_RDI_execute (&point);
      if (rslt != RDIError_NoError && rslt != RDIError_BreakpointReached)
 printf_filtered ("RDI_execute: %s\n", rdi_error_message (rslt));

      if (step)
 arm_rdi_remove_breakpoint (pc, handle);
    }
}
