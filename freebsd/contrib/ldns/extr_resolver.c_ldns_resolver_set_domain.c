
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _domain; } ;
typedef TYPE_1__ ldns_resolver ;
typedef int ldns_rdf ;



void
ldns_resolver_set_domain(ldns_resolver *r, ldns_rdf *d)
{
 r->_domain = d;
}
