
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpbuf ;
typedef int atf_tc_t ;


 char* SRVURL ;
 char* ZFSDEV ;
 int errno ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int system (char*) ;

int
zfs_fstest_mount(const atf_tc_t *tc, void *buf, const char *path, int flags)
{
 char tmpbuf[128];
 int error;


 setenv("RUMP_SERVER", SRVURL, 1);
 snprintf(tmpbuf, sizeof(tmpbuf)-1, "blanket=/dev/zfs:%s:%s",
     ZFSDEV, path);
 setenv("RUMPHIJACK", tmpbuf, 1);
 setenv("LD_PRELOAD", "/usr/lib/librumphijack.so", 1);

 while (*path == '/')
  path++;


 snprintf(tmpbuf, sizeof(tmpbuf)-1, "zpool create %s %s",
     path, ZFSDEV);
 if ((error = system(tmpbuf)) != 0) {
  errno = error;
  return -1;
 }

 return 0;
}
