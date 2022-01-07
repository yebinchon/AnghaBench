
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCH64 () ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_REGS ;
 int PIDGET (int ) ;
 int PT_READ_FPR ;
 int PT_READ_GPR ;
 scalar_t__ errno ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stderr ;
 int inferior_ptid ;
 int memcpy (int*,long long*,int) ;
 int perror (char*) ;
 int regmap (int,int*) ;
 int rs6000_ptrace32 (int ,int ,int*,int,int ) ;
 int rs6000_ptrace64 (int ,int ,int,int ,int*) ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
fetch_register (int regno)
{
  int addr[MAX_REGISTER_SIZE];
  int nr, isfloat;


  errno = 0;

  nr = regmap (regno, &isfloat);


  if (isfloat)
    rs6000_ptrace32 (PT_READ_FPR, PIDGET (inferior_ptid), addr, nr, 0);


  else if (nr < 0)
    {
      if (regno >= NUM_REGS)
 fprintf_unfiltered (gdb_stderr,
       "gdb error: register no %d not implemented.\n",
       regno);
      return;
    }


  else
    {
      if (!ARCH64 ())
 *addr = rs6000_ptrace32 (PT_READ_GPR, PIDGET (inferior_ptid), (int *)nr, 0, 0);
      else
 {


   long long buf;
   rs6000_ptrace64 (PT_READ_GPR, PIDGET (inferior_ptid), nr, 0, (int *)&buf);
   if (DEPRECATED_REGISTER_RAW_SIZE (regno) == 8)
     memcpy (addr, &buf, 8);
   else
     *addr = buf;
 }
    }

  if (!errno)
    supply_register (regno, (char *) addr);
  else
    {




      errno = 0;
    }
}
