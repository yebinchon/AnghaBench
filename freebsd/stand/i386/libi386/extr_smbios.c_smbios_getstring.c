
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const* caddr_t ;


 int SMBIOS_GET8 (char const*,int const) ;
 char* SMBIOS_GETSTR (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char*
smbios_getstring(caddr_t addr, const int offset)
{
 caddr_t cp;
 int i, idx;

 idx = SMBIOS_GET8(addr, offset);
 if (idx != 0) {
  cp = SMBIOS_GETSTR(addr);
  for (i = 1; i < idx; i++)
   cp += strlen(cp) + 1;
  return cp;
 }
 return (((void*)0));
}
