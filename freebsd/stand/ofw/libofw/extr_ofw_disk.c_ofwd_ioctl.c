
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_long ;
typedef int u_int ;
struct open_file {struct ofw_devdesc* f_devdata; } ;
struct ofw_devdesc {int d_handle; } ;




 int ENOTTY ;
 int OF_block_size (int ) ;
 unsigned int OF_blocks (int ) ;

__attribute__((used)) static int
ofwd_ioctl(struct open_file *f, u_long cmd, void *data)
{
 struct ofw_devdesc *dev = f->f_devdata;
 int block_size;
 unsigned int n;

 switch (cmd) {
 case 128:
  block_size = OF_block_size(dev->d_handle);
  *(u_int *)data = block_size;
  break;
 case 129:
  block_size = OF_block_size(dev->d_handle);
  n = OF_blocks(dev->d_handle);
  *(uint64_t *)data = (uint64_t)(n * block_size);
  break;
 default:
  return (ENOTTY);
 }
 return (0);
}
