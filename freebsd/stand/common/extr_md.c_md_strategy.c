
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devdesc {scalar_t__ d_unit; } ;
typedef size_t daddr_t ;
struct TYPE_2__ {int start; } ;


 int EIO ;
 int ENODEV ;
 int ENXIO ;
 int F_MASK ;


 size_t MD_BLOCK_SIZE ;
 size_t MD_IMAGE_SIZE ;
 int bcopy (char*,char*,size_t) ;
 TYPE_1__ md_image ;

__attribute__((used)) static int
md_strategy(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
 struct devdesc *dev = (struct devdesc *)devdata;
 size_t ofs;

 if (dev->d_unit != 0)
  return (ENXIO);

 if (blk < 0 || blk >= (MD_IMAGE_SIZE / MD_BLOCK_SIZE))
  return (EIO);

 if (size % MD_BLOCK_SIZE)
  return (EIO);

 ofs = blk * MD_BLOCK_SIZE;
 if ((ofs + size) > MD_IMAGE_SIZE)
  size = MD_IMAGE_SIZE - ofs;

 if (rsize != ((void*)0))
  *rsize = size;

 switch (rw & F_MASK) {
 case 129:
  bcopy(md_image.start + ofs, buf, size);
  return (0);
 case 128:
  bcopy(buf, md_image.start + ofs, size);
  return (0);
 }

 return (ENODEV);
}
