
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_3__ {int * _tsig_rr; } ;
typedef TYPE_1__ ldns_pkt ;



ldns_rr *ldns_pkt_tsig(const ldns_pkt *pkt) {
 return pkt->_tsig_rr;
}
