
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr_list ;
struct TYPE_3__ {int * _question; } ;
typedef TYPE_1__ ldns_pkt ;



ldns_rr_list *
ldns_pkt_question(const ldns_pkt *packet)
{
 return packet->_question;
}
