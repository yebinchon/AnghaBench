
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_pkt ;


 int ldns_pkt_set_nscount (int *,int ) ;

void
ldns_update_set_upcount(ldns_pkt *p, uint16_t v)
{
 ldns_pkt_set_nscount(p, v);
}
