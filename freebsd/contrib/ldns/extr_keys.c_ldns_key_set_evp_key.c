
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * key; } ;
struct TYPE_5__ {TYPE_1__ _key; } ;
typedef TYPE_2__ ldns_key ;
typedef int EVP_PKEY ;



void
ldns_key_set_evp_key(ldns_key *k, EVP_PKEY *e)
{
 k->_key.key = e;
}
