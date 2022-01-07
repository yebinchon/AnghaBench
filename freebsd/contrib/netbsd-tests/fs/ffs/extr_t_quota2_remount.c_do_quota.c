
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uargs ;
struct ufs_args {int fspec; } ;
struct statvfs {int f_flag; } ;
typedef int buf ;
typedef int atf_tc_t ;


 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 char* FSTEST_IMGNAME ;
 int FSTEST_MNTNAME ;
 int MNT_LOG ;
 int MNT_RDONLY ;
 int MNT_UPDATE ;
 int MOUNT_FFS ;
 int O_CREAT ;
 int O_RDWR ;
 int RL (int) ;
 int RUMP_ETFS_BLK ;
 int ST_QUOTA ;
 int __UNCONST (char*) ;
 int atf_tc_fail (char*,...) ;
 int atf_tc_fail_errno (char*,...) ;
 int rump_init () ;
 int rump_pub_etfs_register (char*,char*,int ) ;
 int rump_pub_vfs_mount_print (int ,int) ;
 int rump_sys_chown (char*,int ,int ) ;
 int rump_sys_close (int) ;
 int rump_sys_fchown (int,int,int) ;
 int rump_sys_mkdir (int ,int) ;
 int rump_sys_mount (int ,int ,int,struct ufs_args*,int) ;
 int rump_sys_open (char*,int,int) ;
 scalar_t__ rump_sys_statvfs1 (int ,struct statvfs*,int ) ;
 scalar_t__ rump_sys_unmount (int ,int ) ;
 int rump_sys_write (int,char*,int ) ;
 int snprintf (char*,int,char*,...) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;
 int system (char*) ;

__attribute__((used)) static void
do_quota(const atf_tc_t *tc, int n, const char *newfs_opts, int log)
{
 int i;
 char buf[1024];
 int res;
 int fd;
 struct ufs_args uargs;
 struct statvfs fst;

 snprintf(buf, sizeof(buf), "newfs -q user -q group -F -s 4000 -n %d "
     "%s %s", (n + 3), newfs_opts, FSTEST_IMGNAME);
        if (system(buf) == -1)
                atf_tc_fail_errno("cannot create file system");

 rump_init();
 if (rump_sys_mkdir(FSTEST_MNTNAME, 0777) == -1)
  atf_tc_fail_errno("mount point create");

 rump_pub_etfs_register("/diskdev", FSTEST_IMGNAME, RUMP_ETFS_BLK);

 uargs.fspec = __UNCONST("/diskdev");


 if (rump_sys_mount(MOUNT_FFS, FSTEST_MNTNAME, MNT_RDONLY,
     &uargs, sizeof(uargs)) == -1)
  atf_tc_fail_errno("mount ffs ro %s", FSTEST_MNTNAME);

 if (rump_sys_statvfs1(FSTEST_MNTNAME, &fst, 0) != 0)
  atf_tc_fail_errno("statbfs %s (1)", FSTEST_MNTNAME);

 if ((fst.f_flag & ST_QUOTA) != 0)
  atf_tc_fail("R/O filesystem has quota");


 if (rump_sys_mount(MOUNT_FFS, FSTEST_MNTNAME,
     MNT_UPDATE | (log ? MNT_LOG : 0), &uargs, sizeof(uargs)) == -1)
  atf_tc_fail_errno("mount ffs rw %s", FSTEST_MNTNAME);

 if (rump_sys_statvfs1(FSTEST_MNTNAME, &fst, 0) != 0)
  atf_tc_fail_errno("statbfs %s (2)", FSTEST_MNTNAME);

 if ((fst.f_flag & ST_QUOTA) == 0)
  atf_tc_fail("R/W filesystem has no quota");


 if (rump_sys_mount(MOUNT_FFS, FSTEST_MNTNAME,
     MNT_UPDATE | (log ? MNT_LOG : 0), &uargs, sizeof(uargs)) == -1)
  atf_tc_fail_errno("mount ffs rw(2) %s", FSTEST_MNTNAME);

 if (rump_sys_statvfs1(FSTEST_MNTNAME, &fst, 0) != 0)
  atf_tc_fail_errno("statbfs %s (3)", FSTEST_MNTNAME);

 if ((fst.f_flag & ST_QUOTA) == 0)
  atf_tc_fail("R/W filesystem has no quota");


 FSTEST_ENTER();
 RL(rump_sys_chown(".", 0, 0));
 for (i = 0 ; i < n; i++) {
  sprintf(buf, "file%d", i);
  RL(fd = rump_sys_open(buf, O_CREAT | O_RDWR, 0755));
  sprintf(buf, "test file no %d", i);
  RL(rump_sys_write(fd, buf, strlen(buf)));
  RL(rump_sys_fchown(fd, i, i+80000));
  rump_sys_close(fd);
 }
 FSTEST_EXIT();
 if (rump_sys_unmount(FSTEST_MNTNAME, 0) != 0) {
  rump_pub_vfs_mount_print(FSTEST_MNTNAME, 1);
  atf_tc_fail_errno("unmount failed");
 }
 snprintf(buf, 1024, "fsck_ffs -fn -F %s", FSTEST_IMGNAME);
 res = system(buf);
 if (res != 0)
  atf_tc_fail("fsck returned %d", res);
}
