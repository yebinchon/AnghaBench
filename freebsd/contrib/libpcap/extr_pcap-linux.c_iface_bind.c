
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ll {int sll_ifindex; int sll_protocol; int sll_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sll ;
typedef int err ;


 int AF_PACKET ;
 int ENETDOWN ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_IFACE_NOT_UP ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int bind (int,struct sockaddr*,int) ;
 int errno ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int memset (struct sockaddr_ll*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int,char*) ;

__attribute__((used)) static int
iface_bind(int fd, int ifindex, char *ebuf, int protocol)
{
 struct sockaddr_ll sll;
 int err;
 socklen_t errlen = sizeof(err);

 memset(&sll, 0, sizeof(sll));
 sll.sll_family = AF_PACKET;
 sll.sll_ifindex = ifindex;
 sll.sll_protocol = protocol;

 if (bind(fd, (struct sockaddr *) &sll, sizeof(sll)) == -1) {
  if (errno == ENETDOWN) {







   return PCAP_ERROR_IFACE_NOT_UP;
  } else {
   pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
       errno, "bind");
   return PCAP_ERROR;
  }
 }



 if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &errlen) == -1) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "getsockopt");
  return 0;
 }

 if (err == ENETDOWN) {







  return PCAP_ERROR_IFACE_NOT_UP;
 } else if (err > 0) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      err, "bind");
  return 0;
 }

 return 1;
}
