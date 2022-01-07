
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char hex (int ) ;
 scalar_t__ mem_err ;
 int set_mem_fault_trap (int) ;

__attribute__((used)) static char *
hex2mem (unsigned char *buf, unsigned char *mem, int count, int may_fault)
{
  int i;
  unsigned char ch;

  set_mem_fault_trap(may_fault);

  for (i=0; i<count; i++)
    {
      ch = hex(*buf++) << 4;
      ch |= hex(*buf++);
      *mem++ = ch;
      if (mem_err)
 return 0;
    }

  set_mem_fault_trap(0);

  return mem;
}
