
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
typedef int socklen_t ;
typedef int saddr ;
typedef int err ;


 int PCAP_ERRBUF_SIZE ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int bind (int,struct sockaddr*,int) ;
 int errno ;
 int getsockopt (int,int ,int ,int*,int*) ;
 int memset (struct sockaddr*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int,char*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
iface_bind_old(int fd, const char *device, char *ebuf)
{
 struct sockaddr saddr;
 int err;
 socklen_t errlen = sizeof(err);

 memset(&saddr, 0, sizeof(saddr));
 strlcpy(saddr.sa_data, device, sizeof(saddr.sa_data));
 if (bind(fd, &saddr, sizeof(saddr)) == -1) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "bind");
  return -1;
 }



 if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &errlen) == -1) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "getsockopt");
  return -1;
 }

 if (err > 0) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      err, "bind");
  return -1;
 }

 return 0;
}
