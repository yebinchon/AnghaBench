
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* can_set_rfmon_op ) (TYPE_1__*) ;} ;
typedef TYPE_1__ pcap_t ;


 int stub1 (TYPE_1__*) ;

int
pcap_can_set_rfmon(pcap_t *p)
{
 return (p->can_set_rfmon_op(p));
}
