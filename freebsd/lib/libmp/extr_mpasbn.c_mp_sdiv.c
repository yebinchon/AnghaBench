
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int _bnerr (char*) ;
 int _sdiv (char*,int const*,short,int *,short*,int *) ;

void
mp_sdiv(const MINT *nmp, short d, MINT *qmp, short *ro)
{
 BN_CTX *c;

 c = BN_CTX_new();
 if (c == ((void*)0))
  _bnerr("sdiv");
 _sdiv("sdiv", nmp, d, qmp, ro, c);
 BN_CTX_free(c);
}
