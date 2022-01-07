
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIGNUM ;


 int DH_free (int *) ;
 int * DH_new () ;
 int DH_set0_pqg (int *,int *,int *,int *) ;

DH *
dh_new_group(BIGNUM *gen, BIGNUM *modulus)
{
 DH *dh;

 if ((dh = DH_new()) == ((void*)0))
  return ((void*)0);
 if (!DH_set0_pqg(dh, modulus, ((void*)0), gen)) {
  DH_free(dh);
  return ((void*)0);
 }

 return dh;
}
