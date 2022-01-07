
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NDELAY ;
 int fcntl (int,int ,int) ;
 int ioctl (int,int ,int*) ;

__attribute__((used)) static int
read__fixio(int fd __attribute__((__unused__)), int e)
{

 switch (e) {
 case -1:


 case 128:
  e = 0;
  return e ? 0 : -1;

 case 129:
  return 0;

 default:
  return -1;
 }
}
