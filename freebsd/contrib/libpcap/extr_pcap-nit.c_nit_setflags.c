
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tv_sec; int tv_usec; } ;
struct nit_ioc {int nioc_bufalign; scalar_t__ nioc_bufspace; int nioc_flags; TYPE_1__ nioc_timeout; scalar_t__ nioc_chunksize; scalar_t__ nioc_bufoffset; int nioc_snaplen; int nioc_typetomatch; } ;
struct TYPE_6__ {scalar_t__ buffer_size; int timeout; scalar_t__ promisc; scalar_t__ immediate; } ;
struct TYPE_7__ {int errbuf; int fd; TYPE_2__ opt; int snapshot; } ;
typedef TYPE_3__ pcap_t ;
typedef int nioc ;


 scalar_t__ BUFSPACE ;
 scalar_t__ CHUNKSIZE ;
 int NF_PROMISC ;
 int NF_TIMEOUT ;
 int NT_ALLTYPES ;
 int PCAP_ERRBUF_SIZE ;
 int SIOCSNIT ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct nit_ioc*) ;
 int memset (struct nit_ioc*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;

__attribute__((used)) static int
nit_setflags(pcap_t *p)
{
 struct nit_ioc nioc;

 memset(&nioc, 0, sizeof(nioc));
 nioc.nioc_typetomatch = NT_ALLTYPES;
 nioc.nioc_snaplen = p->snapshot;
 nioc.nioc_bufalign = sizeof(int);
 nioc.nioc_bufoffset = 0;

 if (p->opt.buffer_size != 0)
  nioc.nioc_bufspace = p->opt.buffer_size;
 else {

  nioc.nioc_bufspace = BUFSPACE;
 }

 if (p->opt.immediate) {





  nioc.nioc_chunksize = 0;
 } else
  nioc.nioc_chunksize = CHUNKSIZE;
 if (p->opt.timeout != 0) {
  nioc.nioc_flags |= NF_TIMEOUT;
  nioc.nioc_timeout.tv_sec = p->opt.timeout / 1000;
  nioc.nioc_timeout.tv_usec = (p->opt.timeout * 1000) % 1000000;
 }
 if (p->opt.promisc)
  nioc.nioc_flags |= NF_PROMISC;

 if (ioctl(p->fd, SIOCSNIT, &nioc) < 0) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "SIOCSNIT");
  return (-1);
 }
 return (0);
}
