
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int decimal2str (char*,char*,int ) ;
 char* get_cell () ;

char *
paddr_d (LONGEST addr)
{
  char *paddr_str = get_cell ();
  if (addr < 0)
    decimal2str (paddr_str, "-", -addr);
  else
    decimal2str (paddr_str, "", addr);
  return paddr_str;
}
