
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int setenv (char const*,char const*,int) ;
 char* smbios_getstring (int ,int const) ;

__attribute__((used)) static void
smbios_setenv(const char *name, caddr_t addr, const int offset)
{
 const char* val;

 val = smbios_getstring(addr, offset);
 if (val != ((void*)0))
  setenv(name, val, 1);
}
