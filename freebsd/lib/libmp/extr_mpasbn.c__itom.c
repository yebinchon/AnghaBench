
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int MPERR (char*) ;
 int * _xtom (char const*,char*) ;
 int asprintf (char**,char*,short) ;
 int free (char*) ;

__attribute__((used)) static MINT *
_itom(const char *msg, short n)
{
 MINT *mp;
 char *s;

 asprintf(&s, "%x", n);
 if (s == ((void*)0))
  MPERR(("%s", msg));
 mp = _xtom(msg, s);
 free(s);
 return (mp);
}
