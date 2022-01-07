
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int EIO ;
 int errno ;
 int expect (char*,int) ;
 int expect_prompt (int) ;
 int get_hex_byte (char*) ;
 int printf_stdebug (char*,unsigned long,int) ;

__attribute__((used)) static int
st2000_read_inferior_memory (CORE_ADDR memaddr, char *myaddr, int len)
{
  int i;


  int count;


  unsigned long startaddr;


  int len_this_pass;
  if (((memaddr - 1) + len) < memaddr)
    {
      errno = EIO;
      return 0;
    }

  startaddr = memaddr;
  count = 0;
  while (count < len)
    {
      len_this_pass = 16;
      if ((startaddr % 16) != 0)
 len_this_pass -= startaddr % 16;
      if (len_this_pass > (len - count))
 len_this_pass = (len - count);

      printf_stdebug ("DI.L %x %x\r", startaddr, len_this_pass);
      expect (":  ", 1);

      for (i = 0; i < len_this_pass; i++)
 get_hex_byte (&myaddr[count++]);

      expect_prompt (1);

      startaddr += len_this_pass;
    }
  return len;
}
