
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bpf_program {int dummy; } ;
struct TYPE_3__ {struct bpf_program fcode; } ;
typedef TYPE_1__ pcap_t ;



__attribute__((used)) static int pcap_setfilter_dos (pcap_t *p, struct bpf_program *fp)
{
  if (!p)
     return (-1);
  p->fcode = *fp;
  return (0);
}
