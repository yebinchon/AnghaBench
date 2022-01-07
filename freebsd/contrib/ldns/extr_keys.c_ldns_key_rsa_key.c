
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ key; } ;
struct TYPE_5__ {TYPE_1__ _key; } ;
typedef TYPE_2__ ldns_key ;
typedef int RSA ;


 int * EVP_PKEY_get1_RSA (scalar_t__) ;

RSA *
ldns_key_rsa_key(const ldns_key *k)
{
 if (k->_key.key) {
  return EVP_PKEY_get1_RSA(k->_key.key);
 } else {
  return ((void*)0);
 }
}
