
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bn; } ;
typedef TYPE_1__ MINT ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_ERRCHECK (char const*,int ) ;
 int BN_div (int *,int *,int ,int ,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int _bnerr (char const*) ;
 int _moveb (char const*,int *,TYPE_1__*) ;

__attribute__((used)) static void
_mdiv(const char *msg, const MINT *nmp, const MINT *dmp, MINT *qmp, MINT *rmp,
    BN_CTX *c)
{
 BIGNUM *q, *r;

 q = ((void*)0);
 r = BN_new();
 if (r != ((void*)0))
  q = BN_new();
 if (r == ((void*)0) || q == ((void*)0))
  _bnerr(msg);
 BN_ERRCHECK(msg, BN_div(q, r, nmp->bn, dmp->bn, c));
 _moveb(msg, q, qmp);
 _moveb(msg, r, rmp);
 BN_free(q);
 BN_free(r);
}
