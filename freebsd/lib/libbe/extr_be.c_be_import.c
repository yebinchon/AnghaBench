
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_7__ {int nomount; } ;
typedef TYPE_1__ recvflags_t ;
typedef int nvlist_t ;
struct TYPE_8__ {int lzh; } ;
typedef TYPE_2__ libbe_handle_t ;


 int BE_ERR_IO ;
 int BE_ERR_NOENT ;
 int BE_ERR_NOORIGIN ;
 int BE_ERR_UNKNOWN ;
 int BE_ERR_ZFSOPEN ;
 int BE_MAXPATHLEN ;



 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int ZFS_TYPE_FILESYSTEM ;
 int be_root_concat (TYPE_2__*,char const*,char*) ;
 int nvlist_add_string (int *,char*,char*) ;
 int nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int set_error (TYPE_2__*,int ) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int ) ;
 int zfs_prop_set_list (int *,int *) ;
 int zfs_receive (int ,char*,int *,TYPE_1__*,int,int *) ;

int
be_import(libbe_handle_t *lbh, const char *bootenv, int fd)
{
 char buf[BE_MAXPATHLEN];
 nvlist_t *props;
 zfs_handle_t *zfs;
 recvflags_t flags = { .nomount = 1 };
 int err;

 be_root_concat(lbh, bootenv, buf);

 if ((err = zfs_receive(lbh->lzh, buf, ((void*)0), &flags, fd, ((void*)0))) != 0) {
  switch (err) {
  case 130:
   return (set_error(lbh, BE_ERR_NOORIGIN));
  case 128:
   return (set_error(lbh, BE_ERR_NOENT));
  case 129:
   return (set_error(lbh, BE_ERR_IO));
  default:
   return (set_error(lbh, BE_ERR_UNKNOWN));
  }
 }

 if ((zfs = zfs_open(lbh->lzh, buf, ZFS_TYPE_FILESYSTEM)) == ((void*)0))
  return (set_error(lbh, BE_ERR_ZFSOPEN));

 nvlist_alloc(&props, NV_UNIQUE_NAME, KM_SLEEP);
 nvlist_add_string(props, "canmount", "noauto");
 nvlist_add_string(props, "mountpoint", "none");

 err = zfs_prop_set_list(zfs, props);
 nvlist_free(props);

 zfs_close(zfs);

 if (err != 0)
  return (set_error(lbh, BE_ERR_UNKNOWN));

 return (0);
}
