
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int _bnerr (char*) ;
 int _mult (char*,int const*,int const*,int *,int *) ;

void
mp_mult(const MINT *mp1, const MINT *mp2, MINT *rmp)
{
 BN_CTX *c;

 c = BN_CTX_new();
 if (c == ((void*)0))
  _bnerr("mult");
 _mult("mult", mp1, mp2, rmp, c);
 BN_CTX_free(c);
}
