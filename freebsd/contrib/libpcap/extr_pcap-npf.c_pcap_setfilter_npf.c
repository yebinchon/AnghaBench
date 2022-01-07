
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_win {int filtering_in_kernel; int adapter; } ;
struct bpf_program {int dummy; } ;
struct TYPE_4__ {scalar_t__ cc; struct pcap_win* priv; } ;
typedef TYPE_1__ pcap_t ;


 scalar_t__ FALSE ;
 scalar_t__ PacketSetBpf (int ,struct bpf_program*) ;
 scalar_t__ install_bpf_program (TYPE_1__*,struct bpf_program*) ;

__attribute__((used)) static int
pcap_setfilter_npf(pcap_t *p, struct bpf_program *fp)
{
 struct pcap_win *pw = p->priv;

 if(PacketSetBpf(pw->adapter,fp)==FALSE){
  if (install_bpf_program(p, fp) < 0)
   return (-1);
  pw->filtering_in_kernel = 0;
  return (0);
 }




 pw->filtering_in_kernel = 1;







 p->cc = 0;
 return (0);
}
