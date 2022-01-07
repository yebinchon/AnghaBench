
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 int isdigit (unsigned char) ;
 long strtol (char const*,char**,int) ;
 int tolower (unsigned char) ;

int
strsuftoi(const char *arg)
{
 char *cp;
 long val;

 if (!isdigit((unsigned char)arg[0]))
  return (-1);

 val = strtol(arg, &cp, 10);
 if (cp != ((void*)0)) {
  if (cp[0] != '\0' && cp[1] != '\0')
    return (-1);
  switch (tolower((unsigned char)cp[0])) {
  case '\0':
  case 'b':
   break;
  case 'k':
   val <<= 10;
   break;
  case 'm':
   val <<= 20;
   break;
  case 'g':
   val <<= 30;
   break;
  default:
   return (-1);
  }
 }
 if (val < 0 || val > INT_MAX)
  return (-1);

 return (val);
}
