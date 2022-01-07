
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct som_solib_mapped_entry {scalar_t__ name; } ;
typedef int dll_descriptor ;
typedef scalar_t__ CORE_ADDR ;


 int ARG1_REGNUM ;
 int read_memory (scalar_t__,char*,int) ;
 scalar_t__ read_register (int ) ;

__attribute__((used)) static char *
som_solib_library_pathname (int pid)
{
  CORE_ADDR dll_handle_address;
  CORE_ADDR dll_pathname_address;
  struct som_solib_mapped_entry dll_descriptor;
  char *p;
  static char dll_pathname[1024];


  dll_handle_address = read_register (ARG1_REGNUM);
  read_memory (dll_handle_address, (char *) &dll_descriptor, sizeof (dll_descriptor));


  dll_pathname_address = (CORE_ADDR) dll_descriptor.name;


  p = dll_pathname;
  for (;;)
    {
      char b;
      read_memory (dll_pathname_address++, (char *) &b, 1);
      *p++ = b;
      if (b == '\0')
 break;
    }

  return dll_pathname;
}
