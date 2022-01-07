
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
typedef int off_t ;


 int DIOCGDELETE ;
 int dev_bsize ;
 int ioctl (int,int ,int*) ;

void
blerase(int fd, ufs2_daddr_t blk, long size)
{
 off_t ioarg[2];

 if (fd < 0)
  return;
 ioarg[0] = blk * dev_bsize;
 ioarg[1] = size;
 ioctl(fd, DIOCGDELETE, ioarg);

 return;
}
