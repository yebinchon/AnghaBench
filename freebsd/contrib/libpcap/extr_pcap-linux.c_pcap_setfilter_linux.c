
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
typedef int pcap_t ;


 int pcap_setfilter_linux_common (int *,struct bpf_program*,int ) ;

__attribute__((used)) static int
pcap_setfilter_linux(pcap_t *handle, struct bpf_program *filter)
{
 return pcap_setfilter_linux_common(handle, filter, 0);
}
