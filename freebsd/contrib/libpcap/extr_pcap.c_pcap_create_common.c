
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tstamp_type; scalar_t__ nocapture_local; scalar_t__ protocol; int tstamp_precision; scalar_t__ immediate; scalar_t__ rfmon; scalar_t__ promisc; scalar_t__ buffer_size; scalar_t__ timeout; } ;
struct TYPE_7__ {scalar_t__ bpf_codegen_flags; TYPE_1__ opt; scalar_t__ snapshot; int setnonblock_op; int can_set_rfmon_op; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_TSTAMP_PRECISION_MICRO ;
 int initialize_ops (TYPE_2__*) ;
 TYPE_2__* pcap_alloc_pcap_t (char*,size_t) ;
 int pcap_cant_set_rfmon ;
 int pcap_setnonblock_unactivated ;

pcap_t *
pcap_create_common(char *ebuf, size_t size)
{
 pcap_t *p;

 p = pcap_alloc_pcap_t(ebuf, size);
 if (p == ((void*)0))
  return (((void*)0));







 p->can_set_rfmon_op = pcap_cant_set_rfmon;






 p->setnonblock_op = pcap_setnonblock_unactivated;

 initialize_ops(p);


 p->snapshot = 0;
 p->opt.timeout = 0;
 p->opt.buffer_size = 0;
 p->opt.promisc = 0;
 p->opt.rfmon = 0;
 p->opt.immediate = 0;
 p->opt.tstamp_type = -1;
 p->opt.tstamp_precision = PCAP_TSTAMP_PRECISION_MICRO;




 p->opt.protocol = 0;
 p->bpf_codegen_flags = 0;

 return (p);
}
