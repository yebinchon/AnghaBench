
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {struct sshkey* dsa; } ;
typedef int BIGNUM ;


 int ASSERT_PTR_NE (struct sshkey*,int *) ;
 int DSA_get0_key (struct sshkey*,int const**,int *) ;

const BIGNUM *
dsa_pub_key(struct sshkey *k)
{
 const BIGNUM *pub_key = ((void*)0);

 ASSERT_PTR_NE(k, ((void*)0));
 ASSERT_PTR_NE(k->dsa, ((void*)0));
 DSA_get0_key(k->dsa, &pub_key, ((void*)0));
 return pub_key;
}
