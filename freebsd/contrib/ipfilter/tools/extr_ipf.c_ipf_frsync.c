
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIOCFRSYN ;
 int fd ;
 int ioctl (int ,int ,int*) ;
 int ipferror (int ,char*) ;
 int ipfname ;
 int opendevice (int ,int) ;
 int printf (char*) ;

void ipf_frsync()
{
 int frsyn = 0;

 if (opendevice(ipfname, 1) != -2 && ioctl(fd, SIOCFRSYN, &frsyn) == -1)
  ipferror(fd, "SIOCFRSYN");
 else
  printf("filter sync'd\n");
}
