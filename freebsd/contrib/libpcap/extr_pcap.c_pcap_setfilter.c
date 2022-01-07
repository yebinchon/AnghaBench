
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_program {int dummy; } ;
struct TYPE_4__ {int (* setfilter_op ) (TYPE_1__*,struct bpf_program*) ;} ;
typedef TYPE_1__ pcap_t ;


 int stub1 (TYPE_1__*,struct bpf_program*) ;

int
pcap_setfilter(pcap_t *p, struct bpf_program *fp)
{
 return (p->setfilter_op(p, fp));
}
