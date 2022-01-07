
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DIOCGMEDIASIZE ;
 int ioctl (int,int ,int *) ;

uint64_t
ldi_get_size(void *priv)
{
 int fd = (uintptr_t) priv;
 uint64_t size;

 ioctl(fd, DIOCGMEDIASIZE, &size);
 return (size);
}
