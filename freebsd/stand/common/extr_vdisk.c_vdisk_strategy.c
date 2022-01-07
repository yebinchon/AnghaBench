
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int vdisk_sectorsz; int vdisk_fd; } ;
typedef TYPE_3__ vdisk_info_t ;
struct TYPE_6__ {TYPE_1__* d_dev; } ;
struct disk_devdesc {int d_offset; TYPE_2__ dd; } ;
struct devdesc {int dummy; } ;
typedef size_t ssize_t ;
typedef int daddr_t ;
struct TYPE_5__ {scalar_t__ dv_type; } ;


 scalar_t__ DEVT_DISK ;
 int EINVAL ;
 int EIO ;
 int ENOSYS ;
 int F_MASK ;


 int SEEK_SET ;
 scalar_t__ errno ;
 int lseek (int ,int,int ) ;
 size_t read (int ,char*,size_t) ;
 TYPE_3__* vdisk_get_info (struct devdesc*) ;
 size_t write (int ,char*,size_t) ;

__attribute__((used)) static int
vdisk_strategy(void *devdata, int rw, daddr_t blk, size_t size,
    char *buf, size_t *rsize)
{
 struct disk_devdesc *dev;
 vdisk_info_t *vd;
 ssize_t rv;

 dev = devdata;
 if (dev == ((void*)0))
  return (EINVAL);
 vd = vdisk_get_info((struct devdesc *)dev);
 if (vd == ((void*)0))
  return (EINVAL);

 if (size == 0 || (size % 512) != 0)
  return (EIO);

 if (dev->dd.d_dev->dv_type == DEVT_DISK) {
  daddr_t offset;

  offset = dev->d_offset * vd->vdisk_sectorsz;
  offset /= 512;
  blk += offset;
 }
 if (lseek(vd->vdisk_fd, blk << 9, SEEK_SET) == -1)
  return (EIO);

 errno = 0;
 switch (rw & F_MASK) {
 case 129:
  rv = read(vd->vdisk_fd, buf, size);
  break;
 case 128:
  rv = write(vd->vdisk_fd, buf, size);
  break;
 default:
  return (ENOSYS);
 }

 if (errno == 0 && rsize != ((void*)0)) {
  *rsize = rv;
 }
 return (errno);
}
