
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rdf ;
struct TYPE_3__ {int * _edns_data; } ;
typedef TYPE_1__ ldns_pkt ;



ldns_rdf *
ldns_pkt_edns_data(const ldns_pkt *packet)
{
 return packet->_edns_data;
}
