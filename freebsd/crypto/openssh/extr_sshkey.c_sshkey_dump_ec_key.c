
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EC_KEY ;
typedef int BIGNUM ;


 int BN_print_fp (int ,int *) ;
 int EC_KEY_get0_group (int const*) ;
 int * EC_KEY_get0_private_key (int const*) ;
 int EC_KEY_get0_public_key (int const*) ;
 int fputs (char*,int ) ;
 int sshkey_dump_ec_point (int ,int ) ;
 int stderr ;

void
sshkey_dump_ec_key(const EC_KEY *key)
{
 const BIGNUM *exponent;

 sshkey_dump_ec_point(EC_KEY_get0_group(key),
     EC_KEY_get0_public_key(key));
 fputs("exponent=", stderr);
 if ((exponent = EC_KEY_get0_private_key(key)) == ((void*)0))
  fputs("(NULL)", stderr);
 else
  BN_print_fp(stderr, EC_KEY_get0_private_key(key));
 fputs("\n", stderr);
}
