
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int atf_tc_t ;


 int MAX (int,int ) ;
 int O_CREAT ;
 int O_RDWR ;
 int RUMP_ETFS_BLK ;
 int SRVURL ;
 int ZFSDEV ;
 int close (int) ;
 int errno ;
 int ftruncate (int,int ) ;
 int open (char const*,int,int) ;
 int rump_init () ;
 int rump_init_server (int ) ;
 int rump_pub_etfs_register (int ,char const*,int ) ;

int
zfs_fstest_newfs(const atf_tc_t *tc, void **buf, const char *image,
 off_t size, void *fspriv)
{
 int res;
 int fd;


 size = MAX(64*1024*1024, size);

 res = rump_init();
 if (res != 0) {
  errno = res;
  return -1;
 }


 if ((fd = open(image, O_RDWR | O_CREAT, 0777)) == -1)
  return -1;
 if (ftruncate(fd, size) == -1) {
  close(fd);
  return -1;
 }
 close(fd);

 res = rump_pub_etfs_register(ZFSDEV, image, RUMP_ETFS_BLK);
 if (res != 0) {
  errno = res;
  return -1;
 }

 res = rump_init_server(SRVURL);
 if (res != 0) {
  errno = res;
  return -1;
 }
 *buf = ((void*)0);

 return 0;
}
