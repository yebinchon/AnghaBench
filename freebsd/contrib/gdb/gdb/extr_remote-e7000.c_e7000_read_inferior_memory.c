
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int EIO ;
 int errno ;
 int expect_full_prompt () ;
 int expect_prompt () ;
 int gbyte () ;
 int gch () ;
 char* paddr_nz (int) ;
 int puts_e7000debug (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int
e7000_read_inferior_memory (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  int count;
  int c;
  int i;
  char buf[200];



  if (((memaddr - 1) + len) < memaddr)
    {
      errno = EIO;
      return 0;
    }

  sprintf (buf, "m %s;l\r", paddr_nz (memaddr));
  puts_e7000debug (buf);

  for (count = 0; count < len; count += 4)
    {

      c = gch ();
      while (c != ' ')
 c = gch ();
      c = gch ();
      if (c == '*')
 {
   puts_e7000debug (".\r");
   expect_full_prompt ();
   return -1;
 }
      while (c != ' ')
 c = gch ();


      for (i = 0; i < 4; i++)
 {
   int b = gbyte ();
   if (count + i < len)
     {
       myaddr[count + i] = b;
     }
 }


      gch ();
      gch ();
      if (count + 4 >= len)
 puts_e7000debug (".\r");
      else
 puts_e7000debug ("\r");

    }
  expect_prompt ();
  return len;
}
