
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct zfs_probe_args {int secsz; scalar_t__ fd; } ;


 int vdev_read (int *,void*,int,void*,size_t) ;

__attribute__((used)) static int
zfs_diskread(void *arg, void *buf, size_t blocks, uint64_t offset)
{
 struct zfs_probe_args *ppa;

 ppa = (struct zfs_probe_args *)arg;
 return (vdev_read(((void*)0), (void *)(uintptr_t)ppa->fd,
     offset * ppa->secsz, buf, blocks * ppa->secsz));
}
