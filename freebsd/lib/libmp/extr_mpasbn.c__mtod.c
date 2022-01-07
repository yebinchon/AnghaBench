
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bn; } ;
typedef TYPE_1__ MINT ;


 char* BN_bn2dec (int ) ;
 int MPERR (char*) ;
 int OPENSSL_free (char*) ;
 int _bnerr (char const*) ;
 int asprintf (char**,char*,char*) ;

__attribute__((used)) static char *
_mtod(const char *msg, const MINT *mp)
{
 char *s, *s2;

 s = BN_bn2dec(mp->bn);
 if (s == ((void*)0))
  _bnerr(msg);
 asprintf(&s2, "%s", s);
 if (s2 == ((void*)0))
  MPERR(("%s", msg));
 OPENSSL_free(s);
 return (s2);
}
