
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef int CORE_ADDR ;


 int QUIT ;
 char* alloca (int) ;
 int errno ;
 int extract_unsigned_integer (char*,int) ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 scalar_t__ mask_address_p ;
 int memcpy (char*,char*,int) ;
 int mips_fetch_word (int) ;
 int mips_store_word (int,int ,int *) ;
 int printf_unfiltered (char*) ;
 int store_unsigned_integer (char*,int,int ) ;

__attribute__((used)) static int
mips_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
    struct mem_attrib *attrib, struct target_ops *target)
{
  int i;
  CORE_ADDR addr;
  int count;
  char *buffer;
  int status;



  if (mask_address_p)
    memaddr &= (CORE_ADDR) 0xffffffff;


  addr = memaddr & ~3;

  count = (((memaddr + len) - addr) + 3) / 4;

  buffer = alloca (count * 4);

  if (write)
    {

      if (addr != memaddr || len < 4)
 {

   store_unsigned_integer (&buffer[0], 4, mips_fetch_word (addr));
 }

      if (count > 1)
 {


   store_unsigned_integer (&buffer[(count - 1) * 4], 4,
      mips_fetch_word (addr + (count - 1) * 4));
 }



      memcpy ((char *) buffer + (memaddr & 3), myaddr, len);



      for (i = 0; i < count; i++, addr += 4)
 {
   status = mips_store_word (addr,
          extract_unsigned_integer (&buffer[i * 4], 4),
        ((void*)0));

   if (i % 256 == 255)
     {
       printf_unfiltered ("*");
       gdb_flush (gdb_stdout);
     }
   if (status)
     {
       errno = status;
       return 0;
     }

 }
      if (count >= 256)
 printf_unfiltered ("\n");
    }
  else
    {

      for (i = 0; i < count; i++, addr += 4)
 {
   store_unsigned_integer (&buffer[i * 4], 4, mips_fetch_word (addr));
   QUIT;
 }


      memcpy (myaddr, buffer + (memaddr & 3), len);
    }
  return len;
}
