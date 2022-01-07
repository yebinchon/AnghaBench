
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_man {int dummy; } ;


 int MANDOCERR_BX ;
 int MANDOCERR_FUNC ;
 int isalnum (unsigned char) ;
 int mandoc_msg (int ,int,int,char*,...) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static void
check_toptext(struct roff_man *mdoc, int ln, int pos, const char *p)
{
 const char *cp, *cpr;

 if (*p == '\0')
  return;

 if ((cp = strstr(p, "OpenBSD")) != ((void*)0))
  mandoc_msg(MANDOCERR_BX, ln, pos + (int)(cp - p), "Ox");
 if ((cp = strstr(p, "NetBSD")) != ((void*)0))
  mandoc_msg(MANDOCERR_BX, ln, pos + (int)(cp - p), "Nx");
 if ((cp = strstr(p, "FreeBSD")) != ((void*)0))
  mandoc_msg(MANDOCERR_BX, ln, pos + (int)(cp - p), "Fx");
 if ((cp = strstr(p, "DragonFly")) != ((void*)0))
  mandoc_msg(MANDOCERR_BX, ln, pos + (int)(cp - p), "Dx");

 cp = p;
 while ((cp = strstr(cp + 1, "()")) != ((void*)0)) {
  for (cpr = cp - 1; cpr >= p; cpr--)
   if (*cpr != '_' && !isalnum((unsigned char)*cpr))
    break;
  if ((cpr < p || *cpr == ' ') && cpr + 1 < cp) {
   cpr++;
   mandoc_msg(MANDOCERR_FUNC, ln, pos + (int)(cpr - p),
       "%.*s()", (int)(cp - cpr), cpr);
  }
 }
}
