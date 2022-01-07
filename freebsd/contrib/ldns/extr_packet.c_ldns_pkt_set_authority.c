
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr_list ;
struct TYPE_3__ {int * _authority; } ;
typedef TYPE_1__ ldns_pkt ;



void
ldns_pkt_set_authority(ldns_pkt *p, ldns_rr_list *rr)
{
 p->_authority = rr;
}
