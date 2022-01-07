
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int libzfs_handle_t ;
typedef int buf ;


 int KENV_GET ;
 int MAX_COMMAND_LEN ;
 int fprintf (int ,char*) ;
 scalar_t__ kenv (int ,char*,char*,int) ;
 int libzfs_fini (int *) ;
 int * libzfs_init () ;
 int perror (char*) ;
 int printf (char*) ;
 int stderr ;
 int strlen (char const* const) ;
 scalar_t__ strtoumax (char*,int *,int) ;
 scalar_t__ zpool_nextboot (int *,scalar_t__,scalar_t__,char const* const) ;

int main(int argc, const char * const *argv)
{
 char buf[32];
 libzfs_handle_t *hdl;
 uint64_t pool_guid;
 uint64_t vdev_guid;
 int zfs_fd;
 int len;

 if (argc != 2) {
  fprintf(stderr, "usage: zfsbootcfg <boot.config(5) options>\n");
  return (1);
 }

 len = strlen(argv[1]);
 if (len >= MAX_COMMAND_LEN) {
  fprintf(stderr, "options string is too long\n");
  return (1);
 }

 if (kenv(KENV_GET, "vfs.zfs.boot.primary_pool", buf, sizeof(buf)) <= 0) {
  perror("can't get vfs.zfs.boot.primary_pool");
  return (1);
 }
 pool_guid = strtoumax(buf, ((void*)0), 10);
 if (pool_guid == 0) {
  perror("can't parse vfs.zfs.boot.primary_pool");
  return (1);
 }

 if (kenv(KENV_GET, "vfs.zfs.boot.primary_vdev", buf, sizeof(buf)) <= 0) {
  perror("can't get vfs.zfs.boot.primary_vdev");
  return (1);
 }
 vdev_guid = strtoumax(buf, ((void*)0), 10);
 if (vdev_guid == 0) {
  perror("can't parse vfs.zfs.boot.primary_vdev");
  return (1);
 }

 if ((hdl = libzfs_init()) == ((void*)0)) {
  (void) fprintf(stderr, "internal error: failed to "
      "initialize ZFS library\n");
  return (1);
 }

 if (zpool_nextboot(hdl, pool_guid, vdev_guid, argv[1]) != 0) {
  perror("ZFS_IOC_NEXTBOOT failed");
  libzfs_fini(hdl);
  return (1);
 }

 libzfs_fini(hdl);
 printf("zfs next boot options are successfully written\n");
 return (0);
}
