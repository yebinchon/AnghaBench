
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_6__ {scalar_t__ linktype; TYPE_1__* bpf_pcap; } ;
typedef TYPE_2__ compiler_state_t ;
typedef int bpf_int32 ;
struct TYPE_5__ {scalar_t__ swapped; int * rfile; } ;


 int BPF_W ;
 scalar_t__ DLT_ENC ;
 scalar_t__ DLT_NULL ;
 int OR_LINKHDR ;
 int SWAPLONG (int) ;
 struct block* gen_cmp (TYPE_2__*,int ,int ,int ,int ) ;
 int htonl (int) ;

__attribute__((used)) static struct block *
gen_loopback_linktype(compiler_state_t *cstate, int proto)
{
 if (cstate->linktype == DLT_NULL || cstate->linktype == DLT_ENC) {
  if (cstate->bpf_pcap->rfile != ((void*)0) && cstate->bpf_pcap->swapped)
   proto = SWAPLONG(proto);
  proto = htonl(proto);
 }
 return (gen_cmp(cstate, OR_LINKHDR, 0, BPF_W, (bpf_int32)proto));
}
