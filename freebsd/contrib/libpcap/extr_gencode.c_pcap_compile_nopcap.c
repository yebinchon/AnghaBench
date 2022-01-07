
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
typedef int pcap_t ;
typedef int bpf_u_int32 ;


 int pcap_close (int *) ;
 int pcap_compile (int *,struct bpf_program*,char const*,int,int ) ;
 int * pcap_open_dead (int,int) ;

int
pcap_compile_nopcap(int snaplen_arg, int linktype_arg,
      struct bpf_program *program,
      const char *buf, int optimize, bpf_u_int32 mask)
{
 pcap_t *p;
 int ret;

 p = pcap_open_dead(linktype_arg, snaplen_arg);
 if (p == ((void*)0))
  return (-1);
 ret = pcap_compile(p, program, buf, optimize, mask);
 pcap_close(p);
 return (ret);
}
