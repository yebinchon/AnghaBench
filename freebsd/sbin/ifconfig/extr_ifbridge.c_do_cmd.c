
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct ifdrv {size_t ifd_len; void* ifd_data; int ifd_cmd; int ifd_name; } ;
typedef int ifd ;
struct TYPE_2__ {int ifr_name; } ;


 int SIOCGDRVSPEC ;
 int SIOCSDRVSPEC ;
 TYPE_1__ ifr ;
 int ioctl (int,int ,struct ifdrv*) ;
 int memset (struct ifdrv*,int ,int) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
do_cmd(int sock, u_long op, void *arg, size_t argsize, int set)
{
 struct ifdrv ifd;

 memset(&ifd, 0, sizeof(ifd));

 strlcpy(ifd.ifd_name, ifr.ifr_name, sizeof(ifd.ifd_name));
 ifd.ifd_cmd = op;
 ifd.ifd_len = argsize;
 ifd.ifd_data = arg;

 return (ioctl(sock, set ? SIOCSDRVSPEC : SIOCGDRVSPEC, &ifd));
}
