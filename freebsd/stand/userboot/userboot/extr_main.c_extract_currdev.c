
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev ;
struct devdesc {scalar_t__ d_unit; TYPE_1__* d_dev; } ;
struct zfs_devdesc {struct devdesc dd; } ;
struct disk_devdesc {struct devdesc dd; int d_partition; int d_slice; } ;
struct TYPE_4__ {scalar_t__ (* dv_open ) (int *,struct disk_devdesc*) ;} ;


 int D_PARTNONE ;
 int D_PARTWILD ;
 int D_SLICENONE ;
 int D_SLICEWILD ;
 int EV_VOLATILE ;
 int bzero (struct zfs_devdesc*,int) ;
 int env_noset ;
 int env_nounset ;
 int env_setenv (char*,int ,int ,int ,int ) ;
 TYPE_1__ host_dev ;
 int init_zfs_bootenv (int ) ;
 scalar_t__ stub1 (int *,struct disk_devdesc*) ;
 TYPE_1__ userboot_disk ;
 scalar_t__ userboot_disk_maxunit ;
 int userboot_fmtdev (struct devdesc*) ;
 int userboot_setcurrdev ;
 scalar_t__ userboot_zfs_found ;
 TYPE_1__ zfs_dev ;
 int zfs_fmtdev (struct zfs_devdesc*) ;

__attribute__((used)) static void
extract_currdev(void)
{
 struct disk_devdesc dev;
 struct devdesc *dd;
 if (userboot_disk_maxunit > 0) {
  dev.dd.d_dev = &userboot_disk;
  dev.dd.d_unit = 0;
  dev.d_slice = D_SLICEWILD;
  dev.d_partition = D_PARTWILD;




  if (dev.dd.d_dev->dv_open(((void*)0), &dev)) {
   dev.d_slice = D_SLICENONE;
   dev.d_partition = D_PARTNONE;
  }
  dd = &dev.dd;
 } else {
  dev.dd.d_dev = &host_dev;
  dev.dd.d_unit = 0;
  dd = &dev.dd;
 }

 env_setenv("currdev", EV_VOLATILE, userboot_fmtdev(dd),
     userboot_setcurrdev, env_nounset);
 env_setenv("loaddev", EV_VOLATILE, userboot_fmtdev(dd),
     env_noset, env_nounset);
}
