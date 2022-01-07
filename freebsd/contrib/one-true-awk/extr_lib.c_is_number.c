
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 double HUGE_VAL ;
 scalar_t__ errno ;
 double strtod (char const*,char**) ;

int is_number(const char *s)
{
 double r;
 char *ep;
 errno = 0;
 r = strtod(s, &ep);
 if (ep == s || r == HUGE_VAL || errno == ERANGE)
  return 0;
 while (*ep == ' ' || *ep == '\t' || *ep == '\n')
  ep++;
 if (*ep == '\0')
  return 1;
 else
  return 0;
}
