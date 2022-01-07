
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {struct sshkey* dsa; } ;
typedef int BIGNUM ;


 int ASSERT_PTR_NE (struct sshkey*,int *) ;
 int DSA_get0_pqg (struct sshkey*,int *,int *,int const**) ;

const BIGNUM *
dsa_g(struct sshkey *k)
{
 const BIGNUM *g = ((void*)0);

 ASSERT_PTR_NE(k, ((void*)0));
 ASSERT_PTR_NE(k->dsa, ((void*)0));
 DSA_get0_pqg(k->dsa, ((void*)0), ((void*)0), &g);
 return g;
}
