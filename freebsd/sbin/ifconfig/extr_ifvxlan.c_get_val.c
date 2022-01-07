
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 int strtoul (char const*,char**,int ) ;

__attribute__((used)) static int
get_val(const char *cp, u_long *valp)
{
 char *endptr;
 u_long val;

 errno = 0;
 val = strtoul(cp, &endptr, 0);
 if (cp[0] == '\0' || endptr[0] != '\0' || errno == ERANGE)
  return (-1);

 *valp = val;
 return (0);
}
