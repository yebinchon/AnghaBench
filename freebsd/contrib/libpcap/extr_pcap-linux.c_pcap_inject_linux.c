
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_linux {int ifindex; scalar_t__ cooked; int sock_packet; } ;
struct TYPE_3__ {int errbuf; int fd; struct pcap_linux* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int errno ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 int send (int ,void const*,size_t,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int
pcap_inject_linux(pcap_t *handle, const void *buf, size_t size)
{
 struct pcap_linux *handlep = handle->priv;
 int ret;
 ret = send(handle->fd, buf, size, 0);
 if (ret == -1) {
  pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
      errno, "send");
  return (-1);
 }
 return (ret);
}
