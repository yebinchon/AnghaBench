
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int termbuf ;


 char* EV ;
 scalar_t__* TT ;
 char* strchr (char*,char) ;
 int strlcat (char*,scalar_t__*,int) ;

void
makeenv(char *env[])
{
 static char termbuf[128] = "TERM=";
 char *p, *q;
 char **ep;

 ep = env;
 if (TT && *TT) {
  strlcat(termbuf, TT, sizeof(termbuf));
  *ep++ = termbuf;
 }
 if ((p = EV)) {
  q = p;
  while ((q = strchr(q, ','))) {
   *q++ = '\0';
   *ep++ = p;
   p = q;
  }
  if (*p)
   *ep++ = p;
 }
 *ep = (char *)0;
}
