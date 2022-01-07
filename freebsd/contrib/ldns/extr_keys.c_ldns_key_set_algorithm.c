
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_signing_algorithm ;
struct TYPE_3__ {int _alg; } ;
typedef TYPE_1__ ldns_key ;



void
ldns_key_set_algorithm(ldns_key *k, ldns_signing_algorithm l)
{
 k->_alg = l;
}
