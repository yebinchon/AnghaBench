
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 int ARCH64 () ;
 int PIDGET (int ) ;
 int PT_WRITE_D ;
 int QUIT ;
 scalar_t__ alloca (int) ;
 scalar_t__ errno ;
 int inferior_ptid ;
 int memcpy (char*,char*,int) ;
 int read_word (int,int*,int) ;
 int rs6000_ptrace32 (int ,int ,int*,int,int *) ;
 int rs6000_ptrace64 (int ,int ,int,int,int *) ;

int
child_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len,
     int write, struct mem_attrib *attrib,
     struct target_ops *target)
{

  int mask = sizeof (int) - 1;
  CORE_ADDR addr = memaddr & ~(CORE_ADDR)mask;


  int count = ((memaddr + len - addr + mask) & ~(CORE_ADDR)mask)
    / sizeof (int);





  int *buf = (int *) alloca (count * sizeof (int));

  int arch64 = ARCH64 ();
  int i;

  if (!write)
    {

      for (i = 0; i < count; i++, addr += sizeof (int))
 {
   if (!read_word (addr, buf + i, arch64))
     return 0;
   QUIT;
 }


      addr -= count * sizeof (int);
      memcpy (myaddr, (char *)buf + (memaddr - addr), len);
    }
  else
    {

      if (addr < memaddr)
 if (!read_word (addr, buf, arch64))
   return 0;


      if (addr + count * sizeof (int) > memaddr + len)
 if (!read_word (addr + (count - 1) * sizeof (int),
                        buf + count - 1, arch64))
   return 0;


      memcpy ((char *)buf + (memaddr - addr), myaddr, len);


      for (i = 0, errno = 0; i < count; i++, addr += sizeof (int))
 {
   if (arch64)
     rs6000_ptrace64 (PT_WRITE_D, PIDGET (inferior_ptid), addr, buf[i], ((void*)0));
   else
     rs6000_ptrace32 (PT_WRITE_D, PIDGET (inferior_ptid), (int *)(long) addr,
        buf[i], ((void*)0));

   if (errno)
     return 0;
   QUIT;
 }
    }

  return len;
}
