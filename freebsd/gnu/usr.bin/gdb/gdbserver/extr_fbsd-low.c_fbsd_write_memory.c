
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_XFER_TYPE ;
typedef int PTRACE_ARG3_TYPE ;
typedef int CORE_ADDR ;


 int PT_READ_D ;
 int PT_WRITE_D ;
 scalar_t__ alloca (int) ;
 scalar_t__ debug_threads ;
 int fprintf (int ,char*,unsigned int,long) ;
 int inferior_pid ;
 int memcpy (char*,char const*,int) ;
 int ptrace (int ,int ,int ,int ) ;
 int stderr ;

__attribute__((used)) static int
fbsd_write_memory (CORE_ADDR memaddr, const char *myaddr, int len)
{
  register int i;

  register CORE_ADDR addr = memaddr & -(CORE_ADDR) sizeof (PTRACE_XFER_TYPE);

  register int count
  = (((memaddr + len) - addr) + sizeof (PTRACE_XFER_TYPE) - 1) / sizeof (PTRACE_XFER_TYPE);

  register PTRACE_XFER_TYPE *buffer = (PTRACE_XFER_TYPE *) alloca (count * sizeof (PTRACE_XFER_TYPE));
  extern int errno;

  if (debug_threads)
    {
      fprintf (stderr, "Writing %02x to %08lx\n", (unsigned)myaddr[0], (long)memaddr);
    }



  buffer[0] = ptrace (PT_READ_D, inferior_pid,
        (PTRACE_ARG3_TYPE) (intptr_t)addr, 0);

  if (count > 1)
    {
      buffer[count - 1]
 = ptrace (PT_READ_D, inferior_pid,
    (PTRACE_ARG3_TYPE) (intptr_t) (addr + (count - 1)
          * sizeof (PTRACE_XFER_TYPE)),
    0);
    }



  memcpy ((char *) buffer + (memaddr & (sizeof (PTRACE_XFER_TYPE) - 1)), myaddr, len);



  for (i = 0; i < count; i++, addr += sizeof (PTRACE_XFER_TYPE))
    {
      errno = 0;
      ptrace (PT_WRITE_D, inferior_pid, (PTRACE_ARG3_TYPE) (intptr_t)addr, buffer[i]);
      if (errno)
 return errno;
    }

  return 0;
}
