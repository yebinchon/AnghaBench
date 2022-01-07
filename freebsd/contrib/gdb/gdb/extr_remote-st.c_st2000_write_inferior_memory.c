
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int expect_prompt (int) ;
 int printf_stdebug (char*,scalar_t__,unsigned char) ;

__attribute__((used)) static int
st2000_write_inferior_memory (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  int i;

  for (i = 0; i < len; i++)
    {
      printf_stdebug ("PM.B %x %x\r", memaddr + i, myaddr[i]);
      expect_prompt (1);
    }
  return len;
}
