
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ _edns_present; } ;
typedef TYPE_1__ ldns_pkt ;


 scalar_t__ ldns_pkt_edns_data (TYPE_1__ const*) ;
 scalar_t__ ldns_pkt_edns_do (TYPE_1__ const*) ;
 scalar_t__ ldns_pkt_edns_extended_rcode (TYPE_1__ const*) ;
 scalar_t__ ldns_pkt_edns_udp_size (TYPE_1__ const*) ;

bool
ldns_pkt_edns(const ldns_pkt *pkt) {
 return (ldns_pkt_edns_udp_size(pkt) > 0 ||
  ldns_pkt_edns_extended_rcode(pkt) > 0 ||
  ldns_pkt_edns_data(pkt) ||
  ldns_pkt_edns_do(pkt) ||
                pkt->_edns_present
        );
}
