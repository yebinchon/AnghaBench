
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int BIOCSHDRCMPLT ;
 scalar_t__ EAFNOSUPPORT ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 scalar_t__ errno ;
 int ioctl (int ,int ,int *) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static int
pcap_inject_bpf(pcap_t *p, const void *buf, size_t size)
{
 int ret;

 ret = write(p->fd, buf, size);
 if (ret == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "send");
  return (PCAP_ERROR);
 }
 return (ret);
}
