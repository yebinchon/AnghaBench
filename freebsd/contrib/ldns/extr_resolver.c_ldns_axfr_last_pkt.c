
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _cur_axfr_pkt; } ;
typedef TYPE_1__ ldns_resolver ;
typedef int ldns_pkt ;



ldns_pkt *
ldns_axfr_last_pkt(const ldns_resolver *res)
{
 return res->_cur_axfr_pkt;
}
