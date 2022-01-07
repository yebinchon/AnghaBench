
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct tok {char const* s; scalar_t__ v; } ;


 int snprintf (char*,size_t,char const*,scalar_t__) ;

const char *
tok2strbuf(register const struct tok *lp, register const char *fmt,
    register u_int v, char *buf, size_t bufsize)
{
 if (lp != ((void*)0)) {
  while (lp->s != ((void*)0)) {
   if (lp->v == v)
    return (lp->s);
   ++lp;
  }
 }
 if (fmt == ((void*)0))
  fmt = "#%d";

 (void)snprintf(buf, bufsize, fmt, v);
 return (const char *)buf;
}
