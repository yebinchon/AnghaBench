
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bn; } ;
typedef TYPE_1__ MINT ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_ERRCHECK (char*,int ) ;
 int BN_free (int *) ;
 int BN_gcd (int *,int ,int ,int *) ;
 int * BN_new () ;
 int _bnerr (char*) ;
 int _moveb (char*,int *,TYPE_1__*) ;

void
mp_gcd(const MINT *mp1, const MINT *mp2, MINT *rmp)
{
 BIGNUM *b;
 BN_CTX *c;

 b = ((void*)0);
 c = BN_CTX_new();
 if (c != ((void*)0))
  b = BN_new();
 if (c == ((void*)0) || b == ((void*)0))
  _bnerr("gcd");
 BN_ERRCHECK("gcd", BN_gcd(b, mp1->bn, mp2->bn, c));
 _moveb("gcd", b, rmp);
 BN_free(b);
 BN_CTX_free(c);
}
