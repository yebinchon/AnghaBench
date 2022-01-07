
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
getqzname(register const char *strp, const int delim)
{
 register int c;

 while ((c = *strp) != '\0' && c != delim)
  ++strp;
 return strp;
}
