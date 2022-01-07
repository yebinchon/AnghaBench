
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_3__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_SNAP_SERIAL_MAX ;
 int ZFS_TYPE_SNAPSHOT ;
 int localtime (int *) ;
 int snprintf (char*,size_t,char*,int) ;
 scalar_t__ strftime (char*,size_t,char*,int ) ;
 int strlen (char*) ;
 int time (int *) ;
 int zfs_dataset_exists (int ,char*,int ) ;

__attribute__((used)) static void
be_setup_snapshot_name(libbe_handle_t *lbh, char *buf, size_t buflen)
{
 time_t rawtime;
 int len, serial;

 time(&rawtime);
 len = strlen(buf);
 len += strftime(buf + len, buflen - len, "@%F-%T", localtime(&rawtime));

 if (buflen - len < 2)
  return;

 for (serial = 0; serial < BE_SNAP_SERIAL_MAX; ++serial) {
  snprintf(buf + len, buflen - len, "-%d", serial);
  if (!zfs_dataset_exists(lbh->lzh, buf, ZFS_TYPE_SNAPSHOT))
   return;
 }
}
