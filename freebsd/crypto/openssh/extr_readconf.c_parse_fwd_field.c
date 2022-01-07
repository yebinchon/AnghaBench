
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwdarg {char* arg; int ispath; } ;


 int memmove (char*,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int
parse_fwd_field(char **p, struct fwdarg *fwd)
{
 char *ep, *cp = *p;
 int ispath = 0;

 if (*cp == '\0') {
  *p = ((void*)0);
  return -1;
 }





 if (*cp == '[') {

  for (ep = cp + 1; *ep != ']' && *ep != '\0'; ep++) {
   if (*ep == '/')
    ispath = 1;
  }

  if (ep[0] != ']' || (ep[1] != ':' && ep[1] != '\0'))
   return -1;

  *ep++ = '\0';
  if (*ep != '\0')
   *ep++ = '\0';
  fwd->arg = cp + 1;
  fwd->ispath = ispath;
  *p = ep;
  return 0;
 }

 for (cp = *p; *cp != '\0'; cp++) {
  switch (*cp) {
  case '\\':
   memmove(cp, cp + 1, strlen(cp + 1) + 1);
   if (*cp == '\0')
    return -1;
   break;
  case '/':
   ispath = 1;
   break;
  case ':':
   *cp++ = '\0';
   goto done;
  }
 }
done:
 fwd->arg = *p;
 fwd->ispath = ispath;
 *p = cp;
 return 0;
}
