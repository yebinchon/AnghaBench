
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs_clean; } ;


 int devnam ;
 int * diskp ;
 int err (int,char*,int ) ;
 int free (int *) ;
 TYPE_1__* fs ;
 int sbwrite (int *,int ) ;
 int ufs_disk_close (int *) ;

__attribute__((used)) static void
closedisk(void)
{

 fs->fs_clean = 1;
 if (sbwrite(diskp, 0) == -1)
  err(1, "sbwrite(%s)", devnam);
 if (ufs_disk_close(diskp) == -1)
  err(1, "ufs_disk_close(%s)", devnam);
 free(diskp);
 diskp = ((void*)0);
 fs = ((void*)0);
}
