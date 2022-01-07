
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ERANGE ;
 scalar_t__ errno ;
 int strtoull (char*,char**,int ) ;

__attribute__((used)) static char *parselonglongint(char *arg, uint64_t *val)
{
 char *endptr = ((void*)0);

 errno = 0;
 *val = strtoull(arg, &endptr, 0);
 if ((endptr && *endptr != '\0')
     || errno != 0) {
  if (errno == ERANGE)
   return "value out of range";
  return "invalid integer input";
 }

 return ((void*)0);
}
