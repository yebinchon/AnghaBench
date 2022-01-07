
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
 int BN_exp (int *,int ,int ,int *) ;
 int BN_free (int *) ;
 int * BN_new () ;
 int _bnerr (char*) ;
 TYPE_1__* _itom (char*,short) ;
 int _mfree (char*,TYPE_1__*) ;
 int _moveb (char*,int *,TYPE_1__*) ;

void
mp_rpow(const MINT *bmp, short e, MINT *rmp)
{
 MINT *emp;
 BIGNUM *b;
 BN_CTX *c;

 b = ((void*)0);
 c = BN_CTX_new();
 if (c != ((void*)0))
  b = BN_new();
 if (c == ((void*)0) || b == ((void*)0))
  _bnerr("rpow");
 emp = _itom("rpow", e);
 BN_ERRCHECK("rpow", BN_exp(b, bmp->bn, emp->bn, c));
 _moveb("rpow", b, rmp);
 _mfree("rpow", emp);
 BN_free(b);
 BN_CTX_free(c);
}
