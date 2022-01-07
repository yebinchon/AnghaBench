
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct open_file {scalar_t__ f_devdata; } ;
struct TYPE_2__ {int d_unit; } ;
struct disk_devdesc {TYPE_1__ dd; } ;


 int CALLBACK (int ,int ,int ,void*) ;
 int ENOTTY ;
 int disk_ioctl (struct disk_devdesc*,int ,void*) ;
 int diskioctl ;

__attribute__((used)) static int
userdisk_ioctl(struct open_file *f, u_long cmd, void *data)
{
 struct disk_devdesc *dev;
 int rc;

 dev = (struct disk_devdesc *)f->f_devdata;
 rc = disk_ioctl(dev, cmd, data);
 if (rc != ENOTTY)
  return (rc);

 return (CALLBACK(diskioctl, dev->dd.d_unit, cmd, data));
}
