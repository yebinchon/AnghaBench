
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr ;
struct TYPE_3__ {int * _tsig_rr; } ;
typedef TYPE_1__ ldns_pkt ;



void ldns_pkt_set_tsig(ldns_pkt *pkt, ldns_rr *rr)
{
 pkt->_tsig_rr = rr;
}
