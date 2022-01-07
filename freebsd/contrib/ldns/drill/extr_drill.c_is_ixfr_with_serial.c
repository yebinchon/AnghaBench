
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
is_ixfr_with_serial(const char* name, uint32_t *serial)
{
 char* end;
 if (strlen(name) > 5 &&
  strncasecmp(name, "IXFR", 4) == 0 &&
  name[4] == '=') {
  *serial = (uint32_t) strtol((name+5), &end, 10);
  return 1;
 }
 return 0;
}
