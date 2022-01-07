
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static char *parseint(char *arg, uint32_t *val, int hexonly)
{
 char *endptr = ((void*)0);

 errno = 0;
 *val = strtoul(arg, &endptr, hexonly ? 16 : 0);
 if ((endptr && *endptr != '\0')
     || errno != 0) {
  if (errno == ERANGE)
   return "value out of range";
  return "invalid integer input";
 }

 return ((void*)0);
}
