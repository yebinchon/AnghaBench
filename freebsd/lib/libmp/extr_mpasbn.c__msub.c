
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bn; } ;
typedef TYPE_1__ MINT ;
typedef int BIGNUM ;


 int BN_ERRCHECK (char const*,int ) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_sub (int *,int ,int ) ;
 int _bnerr (char const*) ;
 int _moveb (char const*,int *,TYPE_1__*) ;

__attribute__((used)) static void
_msub(const char *msg, const MINT *mp1, const MINT *mp2, MINT *rmp)
{
 BIGNUM *b;

 b = BN_new();
 if (b == ((void*)0))
  _bnerr(msg);
 BN_ERRCHECK(msg, BN_sub(b, mp1->bn, mp2->bn));
 _moveb(msg, b, rmp);
 BN_free(b);
}
