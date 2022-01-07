
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uargs ;
struct ufs_args {int fspec; } ;


 int FSTEST_MNTNAME ;
 int MNT_LOG ;
 int MNT_UPDATE ;
 int MOUNT_FFS ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int RUMP_RB_NOSYNC ;
 int __UNCONST (char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int rump_sys_fsync (int) ;
 int rump_sys_mount (int ,int ,int,struct ufs_args*,int) ;
 int rump_sys_open (char*,int,int) ;
 int rump_sys_reboot (int ,int *) ;
 int rump_sys_unlink (char*) ;
 int rump_sys_write (int,char*,unsigned int) ;
 int sprintf (char*,char*) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static int
quota_test5(const char *testopts)
{
 static char buf[512];
 int fd;
 int remount = 0;
 int unlnk = 0;
 int log = 0;
 unsigned int i;

 for (i =0; testopts && i < strlen(testopts); i++) {
  switch(testopts[i]) {
  case 'L':
   log++;
   break;
  case 'R':
   remount++;
   break;
  case 'U':
   unlnk++;
   break;
  default:
   errx(1, "test4: unknown option %c", testopts[i]);
  }
 }
 if (remount) {
  struct ufs_args uargs;
  uargs.fspec = __UNCONST("/diskdev");

  if (rump_sys_mount(MOUNT_FFS, FSTEST_MNTNAME,
      MNT_UPDATE | (log ? MNT_LOG : 0),
      &uargs, sizeof(uargs)) == -1)
   err(1, "mount ffs rw %s", FSTEST_MNTNAME);
 }

 if (unlnk) {




  fd = rump_sys_open("unlinked_file",
      O_EXCL| O_CREAT | O_RDWR, 0644);
  if (fd < 0)
   err(1, "create %s", "unlinked_file");
  sprintf(buf, "test unlinked_file");
  rump_sys_write(fd, buf, strlen(buf));
  if (rump_sys_unlink("unlinked_file") == -1)
   err(1, "unlink unlinked_file");
  if (rump_sys_fsync(fd) == -1)
   err(1, "fsync unlinked_file");
  rump_sys_reboot(RUMP_RB_NOSYNC, ((void*)0));
  errx(1, "reboot failed");
  return 1;
 }
 return 0;
}
