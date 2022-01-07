
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* inject_op ) (TYPE_1__*,void const*,size_t) ;} ;
typedef TYPE_1__ pcap_t ;


 int stub1 (TYPE_1__*,void const*,size_t) ;

int
pcap_inject(pcap_t *p, const void *buf, size_t size)
{
 return (p->inject_op(p, buf, size));
}
