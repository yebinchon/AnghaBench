
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int dummy; } ;
typedef int PTRACE_ARG3_TYPE ;


 int PIDGET (int ) ;
 int PT_GETREGS ;
 int inferior_ptid ;
 int ptrace (int ,int ,int ,int ) ;
 int supply_gregset (struct reg*) ;
 int warning (char*) ;

__attribute__((used)) static void
fetch_regs (void)
{
  struct reg inferior_registers;

  int ret;

  int regno;


  ret = ptrace (PT_GETREGS, PIDGET (inferior_ptid),
  (PTRACE_ARG3_TYPE) &inferior_registers, 0);

  if (ret < 0)
    {
      warning ("unable to fetch general registers");
      return;
    }


  supply_gregset (&inferior_registers);
}
