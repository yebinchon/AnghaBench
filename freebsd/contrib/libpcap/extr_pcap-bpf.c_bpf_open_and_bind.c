
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_name; } ;
typedef int caddr_t ;


 int BIOCSETIF ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_IFACE_NOT_UP ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int bpf_open (char*) ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int,char*,char const*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int
bpf_open_and_bind(const char *name, char *errbuf)
{
 int fd;
 struct ifreq ifr;




 fd = bpf_open(errbuf);
 if (fd < 0)
  return (fd);




 (void)strncpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 if (ioctl(fd, BIOCSETIF, (caddr_t)&ifr) < 0) {
  switch (errno) {

  case 128:



   close(fd);
   return (PCAP_ERROR_NO_SUCH_DEVICE);

  case 129:







   close(fd);
   return (PCAP_ERROR_IFACE_NOT_UP);

  default:
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "BIOCSETIF: %s", name);
   close(fd);
   return (PCAP_ERROR);
  }
 }




 return (fd);
}
