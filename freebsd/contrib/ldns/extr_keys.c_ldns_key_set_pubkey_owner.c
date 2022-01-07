
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf ;
struct TYPE_3__ {int * _pubkey_owner; } ;
typedef TYPE_1__ ldns_key ;



void
ldns_key_set_pubkey_owner(ldns_key *k, ldns_rdf *r)
{
 k->_pubkey_owner = r;
}
