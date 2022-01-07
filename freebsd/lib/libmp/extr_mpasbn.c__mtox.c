
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bn; } ;
typedef TYPE_1__ MINT ;


 char* BN_bn2hex (int ) ;
 int MPERR (char*) ;
 int OPENSSL_free (char*) ;
 int _bnerr (char const*) ;
 int asprintf (char**,char*,char*) ;
 int strlen (char*) ;
 char tolower (char) ;

__attribute__((used)) static char *
_mtox(const char *msg, const MINT *mp)
{
 char *p, *s, *s2;
 int len;

 s = BN_bn2hex(mp->bn);
 if (s == ((void*)0))
  _bnerr(msg);
 asprintf(&s2, "%s", s);
 if (s2 == ((void*)0))
  MPERR(("%s", msg));
 OPENSSL_free(s);
 len = strlen(s2);
 for (p = s2; p < s2 + len; p++)
  *p = tolower(*p);

 return (s2);
}
