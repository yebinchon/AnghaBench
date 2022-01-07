
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf ;
struct TYPE_3__ {int * _pubkey_owner; } ;
typedef TYPE_1__ ldns_key ;



ldns_rdf *
ldns_key_pubkey_owner(const ldns_key *k)
{
 return k->_pubkey_owner;
}
