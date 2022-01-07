
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_stat {scalar_t__ ps_ifdrop; int ps_drop; int ps_recv; } ;
struct bpf_stat {int bs_drop; int bs_recv; } ;
struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;
typedef int caddr_t ;


 int BIOCGSTATS ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int errno ;
 scalar_t__ ioctl (int ,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;

__attribute__((used)) static int
pcap_stats_bpf(pcap_t *p, struct pcap_stat *ps)
{
 struct bpf_stat s;
 if (ioctl(p->fd, BIOCGSTATS, (caddr_t)&s) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "BIOCGSTATS");
  return (PCAP_ERROR);
 }

 ps->ps_recv = s.bs_recv;
 ps->ps_drop = s.bs_drop;
 ps->ps_ifdrop = 0;
 return (0);
}
