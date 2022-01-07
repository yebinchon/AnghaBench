
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pr_hostid; } ;


 char const* hw_serial ;
 TYPE_1__ prison0 ;
 unsigned long strtoul (char const*,char**,int) ;

int
ddi_strtoul(const char *str, char **nptr, int base, unsigned long *result)
{

 if (str == hw_serial) {
  *result = prison0.pr_hostid;
  return (0);
 }

 *result = strtoul(str, nptr, base);
 return (0);
}
