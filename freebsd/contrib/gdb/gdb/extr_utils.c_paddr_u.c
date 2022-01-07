
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int decimal2str (char*,char*,int ) ;
 char* get_cell () ;

char *
paddr_u (CORE_ADDR addr)
{
  char *paddr_str = get_cell ();
  decimal2str (paddr_str, "", addr);
  return paddr_str;
}
