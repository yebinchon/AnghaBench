
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_pkt ;


 int ldns_get_random () ;
 int ldns_pkt_set_id (int *,int ) ;

void
ldns_pkt_set_random_id(ldns_pkt *packet)
{
 uint16_t rid = ldns_get_random();
 ldns_pkt_set_id(packet, rid);
}
