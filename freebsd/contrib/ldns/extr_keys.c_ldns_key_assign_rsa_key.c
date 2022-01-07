
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * key; } ;
struct TYPE_5__ {TYPE_1__ _key; } ;
typedef TYPE_2__ ldns_key ;
typedef int RSA ;
typedef int EVP_PKEY ;


 int EVP_PKEY_assign_RSA (int *,int *) ;
 int * EVP_PKEY_new () ;

void
ldns_key_assign_rsa_key(ldns_key *k, RSA *r)
{
 EVP_PKEY *key = EVP_PKEY_new();
 EVP_PKEY_assign_RSA(key, r);
 k->_key.key = key;
}
