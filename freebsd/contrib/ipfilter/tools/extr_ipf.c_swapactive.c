
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIOCSWAPA ;
 int fd ;
 int ioctl (int ,int ,int*) ;
 int ipferror (int ,char*) ;
 int ipfname ;
 int opendevice (int ,int) ;
 int printf (char*,int) ;

__attribute__((used)) static void swapactive()
{
 int in = 2;

 if (opendevice(ipfname, 1) != -2 && ioctl(fd, SIOCSWAPA, &in) == -1)
  ipferror(fd, "ioctl(SIOCSWAPA)");
 else
  printf("Set %d now inactive\n", in);
}
