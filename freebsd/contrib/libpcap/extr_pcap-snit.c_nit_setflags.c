
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zero ;
typedef scalar_t__ u_int ;
typedef int timeout ;
struct timeval {int tv_sec; int tv_usec; } ;
struct strioctl {int ic_len; char* ic_dp; int ic_cmd; int ic_timout; } ;
struct TYPE_4__ {int timeout; scalar_t__ promisc; scalar_t__ immediate; } ;
struct TYPE_5__ {int errbuf; int fd; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;
typedef int flags ;
typedef int bpf_u_int32 ;


 int INFTIM ;
 int I_STR ;
 int NIOCSCHUNK ;
 int NIOCSFLAGS ;
 int NIOCSTIME ;
 int NI_DROPS ;
 int NI_LEN ;
 int NI_PROMISC ;
 int NI_TIMESTAMP ;
 int PCAP_ERRBUF_SIZE ;
 int errno ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;

__attribute__((used)) static int
nit_setflags(pcap_t *p)
{
 bpf_u_int32 flags;
 struct strioctl si;
 u_int zero = 0;
 struct timeval timeout;

 if (p->opt.immediate) {




  si.ic_cmd = NIOCSCHUNK;
  si.ic_len = sizeof(zero);
  si.ic_dp = (char *)&zero;
  if (ioctl(p->fd, I_STR, (char *)&si) < 0) {
   pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
       errno, "NIOCSCHUNK");
   return (-1);
  }
 }
 si.ic_timout = INFTIM;
 if (p->opt.timeout != 0) {
  timeout.tv_sec = p->opt.timeout / 1000;
  timeout.tv_usec = (p->opt.timeout * 1000) % 1000000;
  si.ic_cmd = NIOCSTIME;
  si.ic_len = sizeof(timeout);
  si.ic_dp = (char *)&timeout;
  if (ioctl(p->fd, I_STR, (char *)&si) < 0) {
   pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
       errno, "NIOCSTIME");
   return (-1);
  }
 }
 flags = NI_TIMESTAMP | NI_LEN | NI_DROPS;
 if (p->opt.promisc)
  flags |= NI_PROMISC;
 si.ic_cmd = NIOCSFLAGS;
 si.ic_len = sizeof(flags);
 si.ic_dp = (char *)&flags;
 if (ioctl(p->fd, I_STR, (char *)&si) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "NIOCSFLAGS");
  return (-1);
 }
 return (0);
}
