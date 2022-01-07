
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addr ;
typedef int CORE_ADDR ;


 char* get_cell () ;
 int phex_nz (int const,int) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;

const char *
core_addr_to_string_nz (const CORE_ADDR addr)
{
  char *str = get_cell ();
  strcpy (str, "0x");
  strcat (str, phex_nz (addr, sizeof (addr)));
  return str;
}
