
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;
typedef int BN_CTX ;


 int BN_CTX_free (int *) ;
 int * BN_CTX_new () ;
 int _bnerr (char*) ;
 int _mdiv (char*,int const*,int const*,int *,int *,int *) ;

void
mp_mdiv(const MINT *nmp, const MINT *dmp, MINT *qmp, MINT *rmp)
{
 BN_CTX *c;

 c = BN_CTX_new();
 if (c == ((void*)0))
  _bnerr("mdiv");
 _mdiv("mdiv", nmp, dmp, qmp, rmp, c);
 BN_CTX_free(c);
}
