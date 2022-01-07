
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** hexchars ;
 scalar_t__ mem_err ;
 int set_mem_fault_trap (int) ;

__attribute__((used)) static unsigned char *
mem2hex (unsigned char *mem, unsigned char *buf, int count, int may_fault)
{
  unsigned char ch;

  set_mem_fault_trap(may_fault);

  while (count-- > 0)
    {
      ch = *mem++;
      if (mem_err)
 return 0;
      *buf++ = hexchars[ch >> 4];
      *buf++ = hexchars[ch & 0xf];
    }

  *buf = 0;

  set_mem_fault_trap(0);

  return buf;
}
