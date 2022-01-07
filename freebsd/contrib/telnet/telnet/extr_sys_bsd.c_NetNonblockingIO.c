
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIONBIO ;
 int ioctl (int,int ,char*) ;

__attribute__((used)) static void
NetNonblockingIO(int fd, int onoff)
{
    ioctl(fd, FIONBIO, (char *)&onoff);
}
