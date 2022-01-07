
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIOCGETFF ;
 int fd ;
 int ioctl (int ,int ,int*) ;
 int ipferror (int ,char*) ;
 int ipfname ;
 int opendevice (int ,int) ;

__attribute__((used)) static int get_flags()
{
 int i = 0;

 if ((opendevice(ipfname, 1) != -2) &&
     (ioctl(fd, SIOCGETFF, &i) == -1)) {
  ipferror(fd, "SIOCGETFF");
  return 0;
 }
 return i;
}
