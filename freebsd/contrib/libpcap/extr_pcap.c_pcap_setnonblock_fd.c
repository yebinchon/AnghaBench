
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int fcntl (int ,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;

int
pcap_setnonblock_fd(pcap_t *p, int nonblock)
{
 int fdflags;

 fdflags = fcntl(p->fd, F_GETFL, 0);
 if (fdflags == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "F_GETFL");
  return (-1);
 }
 if (nonblock)
  fdflags |= O_NONBLOCK;
 else
  fdflags &= ~O_NONBLOCK;
 if (fcntl(p->fd, F_SETFL, fdflags) == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "F_SETFL");
  return (-1);
 }
 return (0);
}
