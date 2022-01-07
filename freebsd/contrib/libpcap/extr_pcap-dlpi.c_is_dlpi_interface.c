
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int close (int) ;
 int open_dlpi_device (char const*,int *,char*) ;

__attribute__((used)) static int
is_dlpi_interface(const char *name)
{
 int fd;
 u_int ppa;
 char errbuf[PCAP_ERRBUF_SIZE];

 fd = open_dlpi_device(name, &ppa, errbuf);
 if (fd < 0) {



  if (fd == PCAP_ERROR_NO_SUCH_DEVICE) {




   return (0);
  }
  return (1);
 }




 close(fd);
 return (1);
}
