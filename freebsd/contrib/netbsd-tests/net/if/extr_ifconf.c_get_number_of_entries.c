
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
struct ifconf {int ifc_len; int * ifc_buf; } ;


 int AF_INET ;
 int EXIT_FAILURE ;
 int SIOCGIFCONF ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int ,char*) ;
 int ioctl (int,int ,struct ifconf*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
get_number_of_entries(void)
{
 int fd, r;
 struct ifconf ifc;

 fd = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd == -1)
  err(EXIT_FAILURE, "socket");

 ifc.ifc_len = 0;
 ifc.ifc_buf = ((void*)0);

 r = ioctl(fd, SIOCGIFCONF, &ifc);
 if (r == -1)
  err(EXIT_FAILURE, "ioctl");

 close(fd);

 return ifc.ifc_len / sizeof(struct ifreq);
}
