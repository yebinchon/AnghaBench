
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static int
pcap_inject_pf(pcap_t *p, const void *buf, size_t size)
{
 int ret;

 ret = write(p->fd, buf, size);
 if (ret == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "send");
  return (-1);
 }
 return (ret);
}
