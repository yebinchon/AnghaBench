
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* external_key; } ;
struct TYPE_5__ {TYPE_1__ _key; } ;
typedef TYPE_2__ ldns_key ;



void *
ldns_key_external_key(const ldns_key *k)
{
 return k->_key.external_key;
}
