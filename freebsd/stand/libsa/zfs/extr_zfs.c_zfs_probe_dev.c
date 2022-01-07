
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct zfs_probe_args {int fd; scalar_t__ secsz; char const* devname; scalar_t__* pool_guid; } ;
struct ptable {int dummy; } ;
struct disk_devdesc {int d_partition; int d_slice; } ;
struct TYPE_2__ {scalar_t__ (* arch_getdev ) (void**,char const*,int *) ;} ;


 int DIOCGMEDIASIZE ;
 int DIOCGSECTORSIZE ;
 int D_PARTNONE ;
 int D_SLICENONE ;
 int ENXIO ;
 int O_RDONLY ;
 TYPE_1__ archsw ;
 int close (int) ;
 int free (struct disk_devdesc*) ;
 int ioctl (int,int ,scalar_t__*) ;
 int open (char const*,int ) ;
 int ptable_close (struct ptable*) ;
 int ptable_iterate (struct ptable*,struct zfs_probe_args*,int ) ;
 struct ptable* ptable_open (struct zfs_probe_args*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ stub1 (void**,char const*,int *) ;
 int zfs_diskread ;
 int zfs_probe (int,scalar_t__*) ;
 int zfs_probe_partition ;

int
zfs_probe_dev(const char *devname, uint64_t *pool_guid)
{
 struct disk_devdesc *dev;
 struct ptable *table;
 struct zfs_probe_args pa;
 uint64_t mediasz;
 int ret;

 if (pool_guid)
  *pool_guid = 0;
 pa.fd = open(devname, O_RDONLY);
 if (pa.fd == -1)
  return (ENXIO);





 if (archsw.arch_getdev((void **)&dev, devname, ((void*)0)) == 0) {
  int partition = dev->d_partition;
  int slice = dev->d_slice;

  free(dev);
  if (partition != D_PARTNONE && slice != D_SLICENONE) {
   ret = zfs_probe(pa.fd, pool_guid);
   if (ret == 0)
    return (0);
  }
 }


 ret = ioctl(pa.fd, DIOCGMEDIASIZE, &mediasz);
 if (ret == 0)
  ret = ioctl(pa.fd, DIOCGSECTORSIZE, &pa.secsz);
 if (ret == 0) {
  pa.devname = devname;
  pa.pool_guid = pool_guid;
  table = ptable_open(&pa, mediasz / pa.secsz, pa.secsz,
      zfs_diskread);
  if (table != ((void*)0)) {
   ptable_iterate(table, &pa, zfs_probe_partition);
   ptable_close(table);
  }
 }
 close(pa.fd);
 if (pool_guid && *pool_guid == 0)
  ret = ENXIO;
 return (ret);
}
