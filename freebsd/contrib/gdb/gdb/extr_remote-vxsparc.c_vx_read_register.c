
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
typedef int CORE_ADDR ;


 int PTRACE_GETFPREGS ;
 int PTRACE_GETREGS ;
 int SPARC_FPREG_PLEN ;
 int SPARC_GREG_PLEN ;
 struct regcache* current_regcache ;
 int memset (char*,int ,int) ;
 int net_read_registers (char*,int,int ) ;
 int sparc32_supply_fpregset (struct regcache*,int,char*) ;
 int sparc32_supply_gregset (int *,struct regcache*,int,char*) ;
 scalar_t__ target_has_fp ;
 int vxsparc_gregset ;

void
vx_read_register (int regnum)
{
  struct regcache *regcache = current_regcache;
  char gregs[SPARC_GREG_PLEN];
  char fpregs[SPARC_FPREG_PLEN];
  CORE_ADDR sp;


  net_read_registers (gregs, SPARC_GREG_PLEN, PTRACE_GETREGS);
  sparc32_supply_gregset (&vxsparc_gregset, regcache, -1, gregs);





  if (target_has_fp)
    net_read_registers (fpregs, SPARC_FPREG_PLEN, PTRACE_GETFPREGS);
  else
    memset (fpregs, 0, SPARC_FPREG_PLEN);
  sparc32_supply_fpregset (regcache, -1, fpregs);
}
