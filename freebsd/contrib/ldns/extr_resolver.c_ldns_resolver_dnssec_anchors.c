
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr_list ;
struct TYPE_3__ {int * _dnssec_anchors; } ;
typedef TYPE_1__ ldns_resolver ;



ldns_rr_list *
ldns_resolver_dnssec_anchors(const ldns_resolver *r)
{
    return r->_dnssec_anchors;
}
