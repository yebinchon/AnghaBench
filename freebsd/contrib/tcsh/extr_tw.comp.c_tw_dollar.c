
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Strbuf {int dummy; } ;
typedef char const Char ;


 int ERR_COMPMIS ;
 scalar_t__ Isdigit (char const) ;
 struct Strbuf Strbuf_INIT ;
 int Strbuf_append (struct Strbuf*,char const*) ;
 int Strbuf_append1 (struct Strbuf*,int ) ;
 char* Strbuf_finish (struct Strbuf*) ;
 int short2str (char const*) ;
 int stderror (int ,int,char const*,int ) ;
 int xfree (char const*) ;

__attribute__((used)) static const Char *
tw_dollar(const Char *str, Char **wl, size_t nwl, Char **result, Char sep,
   const char *msg)
{
    struct Strbuf buf = Strbuf_INIT;
    Char *res;
    const Char *sp;

    for (sp = str; *sp && *sp != sep;)
 if (sp[0] == '$' && sp[1] == ':' && Isdigit(sp[sp[2] == '-' ? 3 : 2])) {
     int num, neg = 0;
     sp += 2;
     if (*sp == '-') {
  neg = 1;
  sp++;
     }
     for (num = *sp++ - '0'; Isdigit(*sp); num += 10 * num + *sp++ - '0')
  continue;
     if (neg)
  num = nwl - num - 1;
     if (num >= 0 && (size_t)num < nwl)
  Strbuf_append(&buf, wl[num]);
 }
 else
     Strbuf_append1(&buf, *sp++);

    res = Strbuf_finish(&buf);

    if (*sp++ == sep) {
 *result = res;
 return sp;
    }

    xfree(res);

    stderror(ERR_COMPMIS, (int)sep, msg, short2str(str));
    return --sp;
}
