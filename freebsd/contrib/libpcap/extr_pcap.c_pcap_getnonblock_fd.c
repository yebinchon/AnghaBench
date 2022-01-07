
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int F_GETFL ;
 int O_NONBLOCK ;
 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int fcntl (int ,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;

int
pcap_getnonblock_fd(pcap_t *p)
{
 int fdflags;

 fdflags = fcntl(p->fd, F_GETFL, 0);
 if (fdflags == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "F_GETFL");
  return (-1);
 }
 if (fdflags & O_NONBLOCK)
  return (1);
 else
  return (0);
}
