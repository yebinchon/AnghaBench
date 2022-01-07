
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTRACE_XFER_TYPE ;
typedef int PTRACE_ARG3_TYPE ;
typedef int CORE_ADDR ;


 int PT_READ_D ;
 scalar_t__ alloca (int) ;
 int errno ;
 int inferior_pid ;
 int memcpy (char*,char*,int) ;
 int ptrace (int ,int ,int ,int ) ;

__attribute__((used)) static int
fbsd_read_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  register int i;

  register CORE_ADDR addr = memaddr & -(CORE_ADDR) sizeof (PTRACE_XFER_TYPE);

  register int count
    = (((memaddr + len) - addr) + sizeof (PTRACE_XFER_TYPE) - 1)
      / sizeof (PTRACE_XFER_TYPE);

  register PTRACE_XFER_TYPE *buffer
    = (PTRACE_XFER_TYPE *) alloca (count * sizeof (PTRACE_XFER_TYPE));


  for (i = 0; i < count; i++, addr += sizeof (PTRACE_XFER_TYPE))
    {
      errno = 0;
      buffer[i] = ptrace (PT_READ_D, inferior_pid, (PTRACE_ARG3_TYPE) (intptr_t)addr, 0);
      if (errno)
 return errno;
    }


  memcpy (myaddr, (char *) buffer + (memaddr & (sizeof (PTRACE_XFER_TYPE) - 1)), len);

  return 0;
}
