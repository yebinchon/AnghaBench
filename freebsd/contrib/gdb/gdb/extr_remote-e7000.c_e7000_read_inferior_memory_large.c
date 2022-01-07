
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int EIO ;
 int errno ;
 int gch () ;
 unsigned char get_hex (int*) ;
 char* paddr_nz (int) ;
 int puts_e7000debug (char*) ;
 int sprintf (char*,char*,char*,char*) ;

__attribute__((used)) static int
e7000_read_inferior_memory_large (CORE_ADDR memaddr, unsigned char *myaddr,
      int len)
{
  int count;
  int c;
  char buf[200];



  if (((memaddr - 1) + len) < memaddr)
    {
      errno = EIO;
      return 0;
    }

  sprintf (buf, "d %s %s\r", paddr_nz (memaddr), paddr_nz (memaddr + len - 1));
  puts_e7000debug (buf);

  count = 0;
  c = gch ();


  while (c != '>')
    c = gch ();

  while (c != '\r')
    c = gch ();
  c = gch ();

  while (count < len)
    {

      while (c <= ' ')
 c = gch ();


      get_hex (&c);


      while (c != '"' && count < len)
 {
   if (c == ' ')
     c = gch ();
   else
     {
       myaddr[count++] = get_hex (&c);
     }
 }

      while (c != '\r')
 c = gch ();
    }


  while (c != ':')
    c = gch ();

  return len;
}
