
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int expect_prompt () ;
 char* paddr_nz (int) ;
 int puts_e7000debug (char*) ;
 int sprintf (char*,char*,char*,unsigned char,...) ;

__attribute__((used)) static int
write_small (CORE_ADDR memaddr, unsigned char *myaddr, int len)
{
  int i;
  char buf[200];

  for (i = 0; i < len; i++)
    {
      if (((memaddr + i) & 3) == 0 && (i + 3 < len))
 {

   sprintf (buf, "m %s %x%02x%02x%02x;l\r",
     paddr_nz (memaddr + i),
     myaddr[i], myaddr[i + 1], myaddr[i + 2], myaddr[i + 3]);
   puts_e7000debug (buf);
   i += 3;
 }
      else
 {
   sprintf (buf, "m %s %x\r", paddr_nz (memaddr + i), myaddr[i]);
   puts_e7000debug (buf);
 }
    }

  expect_prompt ();

  return len;
}
