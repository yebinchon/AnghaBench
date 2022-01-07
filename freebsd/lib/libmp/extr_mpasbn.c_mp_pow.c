
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int bn; } ;
typedef TYPE_1__ MINT ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int BN_ERRCHECK (char*,int ) ;
 int BN_free (int *) ;
 int BN_mod_exp (int *,int ,int ,int ,int *) ;
 int * BN_new () ;
 int _bnerr (char*) ;
 int _moveb (char*,int *,TYPE_1__*) ;

void
mp_pow(const MINT *bmp, const MINT *emp, const MINT *mmp, MINT *rmp)
{
 BIGNUM *b;
 BN_CTX *c;

 b = ((void*)0);
 c = BN_CTX_new();
 if (c != ((void*)0))
  b = BN_new();
 if (c == ((void*)0) || b == ((void*)0))
  _bnerr("pow");
 BN_ERRCHECK("pow", BN_mod_exp(b, bmp->bn, emp->bn, mmp->bn, c));
 _moveb("pow", b, rmp);
 BN_free(b);
 BN_CTX_free(c);
}
