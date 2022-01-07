
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {struct sshkey* dsa; } ;
typedef int BIGNUM ;


 int ASSERT_PTR_NE (struct sshkey*,int *) ;
 int DSA_get0_key (struct sshkey*,int *,int const**) ;

const BIGNUM *
dsa_priv_key(struct sshkey *k)
{
 const BIGNUM *priv_key = ((void*)0);

 ASSERT_PTR_NE(k, ((void*)0));
 ASSERT_PTR_NE(k->dsa, ((void*)0));
 DSA_get0_key(k->dsa, ((void*)0), &priv_key);
 return priv_key;
}
