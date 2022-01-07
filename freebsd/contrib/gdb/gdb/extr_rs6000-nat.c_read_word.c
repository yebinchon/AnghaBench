
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int PIDGET (int ) ;
 int PT_READ_I ;
 scalar_t__ errno ;
 int inferior_ptid ;
 int rs6000_ptrace32 (int ,int ,int*,int ,int *) ;
 int rs6000_ptrace64 (int ,int ,scalar_t__,int ,int *) ;

__attribute__((used)) static int
read_word (CORE_ADDR from, int *to, int arch64)
{

  errno = 0;

  if (arch64)
    *to = rs6000_ptrace64 (PT_READ_I, PIDGET (inferior_ptid), from, 0, ((void*)0));
  else
    *to = rs6000_ptrace32 (PT_READ_I, PIDGET (inferior_ptid), (int *)(long) from,
                    0, ((void*)0));

  return !errno;
}
