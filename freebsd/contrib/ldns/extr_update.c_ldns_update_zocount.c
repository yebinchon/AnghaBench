
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_pkt ;


 int ldns_pkt_qdcount (int const*) ;

uint16_t
ldns_update_zocount(const ldns_pkt *p)
{
 return ldns_pkt_qdcount(p);
}
