
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RSA ;
typedef int BIGNUM ;


 int RSA_get0_key (int const*,int const**,int const**,int *) ;

__attribute__((used)) static int
have_rsa_key(const RSA *rsa)
{
 const BIGNUM *rsa_n, *rsa_e;

 RSA_get0_key(rsa, &rsa_n, &rsa_e, ((void*)0));
 return rsa_n != ((void*)0) && rsa_e != ((void*)0);
}
