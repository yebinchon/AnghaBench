
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {struct sshkey* rsa; } ;
typedef int BIGNUM ;


 int ASSERT_PTR_NE (struct sshkey*,int *) ;
 int RSA_get0_factors (struct sshkey*,int *,int const**) ;

const BIGNUM *
rsa_q(struct sshkey *k)
{
 const BIGNUM *q = ((void*)0);

 ASSERT_PTR_NE(k, ((void*)0));
 ASSERT_PTR_NE(k->rsa, ((void*)0));
 RSA_get0_factors(k->rsa, ((void*)0), &q);
 return q;
}
