
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* hx509_private_key ;
typedef int hx509_context ;
struct TYPE_4__ {int rsa; } ;
struct TYPE_5__ {TYPE_1__ private_key; } ;
typedef int BIGNUM ;


 int * BN_dup (int const*) ;
 int RSA_get0_key (int ,int const**,int const**,int *) ;
 scalar_t__ strcasecmp (char const*,char*) ;

__attribute__((used)) static BIGNUM *
rsa_get_internal(hx509_context context,
   hx509_private_key key,
   const char *type)
{
    const BIGNUM *n;

    if (strcasecmp(type, "rsa-modulus") == 0) {
 RSA_get0_key(key->private_key.rsa, &n, ((void*)0), ((void*)0));
    } else if (strcasecmp(type, "rsa-exponent") == 0) {
 RSA_get0_key(key->private_key.rsa, ((void*)0), &n, ((void*)0));
    } else
 return ((void*)0);
    return BN_dup(n);
}
