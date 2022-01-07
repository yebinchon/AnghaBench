
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
typedef int sa ;
struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int device ;
 int errno ;
 int memset (struct sockaddr*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 int sendto (int ,void const*,size_t,int ,struct sockaddr*,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
pcap_inject_nit(pcap_t *p, const void *buf, size_t size)
{
 struct sockaddr sa;
 int ret;

 memset(&sa, 0, sizeof(sa));
 strncpy(sa.sa_data, device, sizeof(sa.sa_data));
 ret = sendto(p->fd, buf, size, 0, &sa, sizeof(sa));
 if (ret == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "send");
  return (-1);
 }
 return (ret);
}
