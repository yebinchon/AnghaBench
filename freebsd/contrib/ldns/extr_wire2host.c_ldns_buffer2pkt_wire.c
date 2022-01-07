
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_pkt ;
typedef int ldns_buffer ;


 int ldns_buffer_begin (int const*) ;
 int ldns_buffer_limit (int const*) ;
 int ldns_wire2pkt (int **,int ,int ) ;

ldns_status
ldns_buffer2pkt_wire(ldns_pkt **packet, const ldns_buffer *buffer)
{

 return ldns_wire2pkt(packet, ldns_buffer_begin(buffer),
    ldns_buffer_limit(buffer));

}
