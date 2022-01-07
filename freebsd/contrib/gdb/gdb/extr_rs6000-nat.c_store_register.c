
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCH64 () ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_REGS ;
 int PIDGET (int ) ;
 int PT_WRITE_FPR ;
 int PT_WRITE_GPR ;
 int SP_REGNUM ;
 scalar_t__ errno ;
 int exec_one_dummy_insn () ;
 int fprintf_unfiltered (int ,char*,int) ;
 int gdb_stderr ;
 int inferior_ptid ;
 int memcpy (long long*,int*,int) ;
 int perror (char*) ;
 int regcache_collect (int,int*) ;
 int regmap (int,int*) ;
 int rs6000_ptrace32 (int ,int ,int*,int,int ) ;
 int rs6000_ptrace64 (int ,int ,int,int ,int*) ;

__attribute__((used)) static void
store_register (int regno)
{
  int addr[MAX_REGISTER_SIZE];
  int nr, isfloat;


  regcache_collect (regno, addr);


  errno = 0;

  nr = regmap (regno, &isfloat);


  if (isfloat)
    rs6000_ptrace32 (PT_WRITE_FPR, PIDGET (inferior_ptid), addr, nr, 0);


  else if (nr < 0)
    {
      if (regno >= NUM_REGS)
 fprintf_unfiltered (gdb_stderr,
       "gdb error: register no %d not implemented.\n",
       regno);
    }


  else
    {
      if (regno == SP_REGNUM)





 exec_one_dummy_insn ();




      if (!ARCH64 ())
 rs6000_ptrace32 (PT_WRITE_GPR, PIDGET (inferior_ptid), (int *)nr, *addr, 0);
      else
 {


   long long buf;
   if (DEPRECATED_REGISTER_RAW_SIZE (regno) == 8)
     memcpy (&buf, addr, 8);
   else
     buf = *addr;
   rs6000_ptrace64 (PT_WRITE_GPR, PIDGET (inferior_ptid), nr, 0, (int *)&buf);
 }
    }

  if (errno)
    {
      perror ("ptrace write");
      errno = 0;
    }
}
