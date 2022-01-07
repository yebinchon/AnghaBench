
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_8__ {int member_0; } ;
typedef TYPE_1__ sendflags_t ;
struct TYPE_9__ {int lzh; } ;
typedef TYPE_2__ libbe_handle_t ;


 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;
 int ZFS_TYPE_DATASET ;
 int be_root_concat (TYPE_2__*,char*,char*) ;
 int be_snapshot (TYPE_2__*,char const*,int *,int,char*) ;
 int set_error (TYPE_2__*,int ) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_send_one (int *,int *,int,TYPE_1__) ;

int
be_export(libbe_handle_t *lbh, const char *bootenv, int fd)
{
 char snap_name[BE_MAXPATHLEN];
 char buf[BE_MAXPATHLEN];
 zfs_handle_t *zfs;
 sendflags_t flags = { 0 };
 int err;

 if ((err = be_snapshot(lbh, bootenv, ((void*)0), 1, snap_name)) != 0)

  return (err);

 be_root_concat(lbh, snap_name, buf);

 if ((zfs = zfs_open(lbh->lzh, buf, ZFS_TYPE_DATASET)) == ((void*)0))
  return (set_error(lbh, BE_ERR_ZFSOPEN));

 err = zfs_send_one(zfs, ((void*)0), fd, flags);
 zfs_close(zfs);

 return (err);
}
