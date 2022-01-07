
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {size_t d_unit; } ;
struct disk_devdesc {TYPE_1__ dd; } ;
typedef int daddr_t ;
struct TYPE_4__ {int sectorsize; } ;


 int CALLBACK (int ,size_t,int,char*,size_t,size_t*) ;
 int EINVAL ;
 int EROFS ;
 int F_MASK ;
 int F_READ ;
 int F_WRITE ;
 int diskread ;
 TYPE_2__* ud_info ;

__attribute__((used)) static int
userdisk_realstrategy(void *devdata, int rw, daddr_t dblk, size_t size,
    char *buf, size_t *rsize)
{
 struct disk_devdesc *dev = devdata;
 uint64_t off;
 size_t resid;
 int rc;

 rw &= F_MASK;
 if (rw == F_WRITE)
  return (EROFS);
 if (rw != F_READ)
  return (EINVAL);
 if (rsize)
  *rsize = 0;
 off = dblk * ud_info[dev->dd.d_unit].sectorsize;
 rc = CALLBACK(diskread, dev->dd.d_unit, off, buf, size, &resid);
 if (rc)
  return (rc);
 if (rsize)
  *rsize = size - resid;
 return (0);
}
