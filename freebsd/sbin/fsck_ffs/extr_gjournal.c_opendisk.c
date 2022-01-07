
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d_fs; int d_error; } ;


 int devnam ;
 TYPE_1__ disk ;
 TYPE_1__* diskp ;
 int err (int,char*,int ,int ) ;
 int * fs ;
 int ufs_disk_fillout (TYPE_1__*,int ) ;

__attribute__((used)) static void
opendisk(void)
{
 if (diskp != ((void*)0))
  return;
 diskp = &disk;
 if (ufs_disk_fillout(diskp, devnam) == -1) {
  err(1, "ufs_disk_fillout(%s) failed: %s", devnam,
      diskp->d_error);
 }
 fs = &diskp->d_fs;
}
