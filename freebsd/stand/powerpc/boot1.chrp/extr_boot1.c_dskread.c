
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DEV_BSIZE ;
 int bootdev ;
 int ofw_read (int ,void*,int) ;
 int ofw_seek (int ,int) ;

__attribute__((used)) static int
dskread(void *buf, uint64_t lba, int nblk)
{





 ofw_seek(bootdev, lba * DEV_BSIZE);
 ofw_read(bootdev, buf, nblk * DEV_BSIZE);
 return (0);
}
