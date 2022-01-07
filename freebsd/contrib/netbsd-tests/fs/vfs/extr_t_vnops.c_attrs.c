
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_6__ {int tv_sec; int tv_nsec; } ;
struct TYPE_5__ {int tv_sec; int tv_nsec; } ;
struct stat {int st_uid; int st_gid; int st_mode; TYPE_2__ st_mtimespec; TYPE_1__ st_atimespec; } ;
typedef int atf_tc_t ;
struct TYPE_8__ {int tv_nsec; int tv_sec; } ;
struct TYPE_7__ {int tv_nsec; int tv_sec; } ;


 int ACCESSPERMS ;
 int CHECK (int ) ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 scalar_t__ FSTYPE_EXT2FS (int const*) ;
 scalar_t__ FSTYPE_MSDOS (int const*) ;
 scalar_t__ FSTYPE_SYSVBFS (int const*) ;
 scalar_t__ FSTYPE_V7FS (int const*) ;
 int O_CREAT ;
 int O_RDWR ;
 int RL (int) ;
 int TESTFILE ;
 int rump_sys_chmod (int ,int) ;
 int rump_sys_chown (int ,int,int) ;
 int rump_sys_close (int) ;
 int rump_sys_open (int ,int,int) ;
 int rump_sys_stat (int ,struct stat*) ;
 int rump_sys_utimes (int ,struct timeval*) ;
 TYPE_4__ st_atimespec ;
 int st_gid ;
 int st_mode ;
 TYPE_3__ st_mtimespec ;
 int st_uid ;

__attribute__((used)) static void
attrs(const atf_tc_t *tc, const char *mp)
{
 struct stat sb, sb2;
 struct timeval tv[2];
 int fd;

 FSTEST_ENTER();
 RL(fd = rump_sys_open(TESTFILE, O_RDWR | O_CREAT, 0755));
 RL(rump_sys_close(fd));
 RL(rump_sys_stat(TESTFILE, &sb));
 if (!(FSTYPE_MSDOS(tc) || FSTYPE_SYSVBFS(tc))) {
  RL(rump_sys_chown(TESTFILE, 1, 2));
  sb.st_uid = 1;
  sb.st_gid = 2;
  RL(rump_sys_chmod(TESTFILE, 0123));
  sb.st_mode = (sb.st_mode & ~ACCESSPERMS) | 0123;
 }

 tv[0].tv_sec = 1000000000;
 tv[0].tv_usec = 1;
 tv[1].tv_sec = 1000000002;
 tv[1].tv_usec = 3;
 RL(rump_sys_utimes(TESTFILE, tv));
 RL(rump_sys_utimes(TESTFILE, tv));
 sb.st_atimespec.tv_sec = 1000000000;
 sb.st_atimespec.tv_nsec = 1000;
 sb.st_mtimespec.tv_sec = 1000000002;
 sb.st_mtimespec.tv_nsec = 3000;

 RL(rump_sys_stat(TESTFILE, &sb2));

 if (!(FSTYPE_MSDOS(tc) || FSTYPE_SYSVBFS(tc))) {
  ATF_REQUIRE_EQ(sb.st_uid, sb2.st_uid);
  ATF_REQUIRE_EQ(sb.st_gid, sb2.st_gid);
  ATF_REQUIRE_EQ(sb.st_mode, sb2.st_mode);
 }
 if (!FSTYPE_MSDOS(tc)) {

  ATF_REQUIRE_EQ(sb.st_atimespec.tv_sec, sb2.st_atimespec.tv_sec);
 }
 ATF_REQUIRE_EQ(sb.st_mtimespec.tv_sec, sb2.st_mtimespec.tv_sec);
 if (!(FSTYPE_EXT2FS(tc) || FSTYPE_MSDOS(tc) ||
       FSTYPE_SYSVBFS(tc) || FSTYPE_V7FS(tc))) {
  ATF_REQUIRE_EQ(sb.st_atimespec.tv_nsec, sb2.st_atimespec.tv_nsec);
  ATF_REQUIRE_EQ(sb.st_mtimespec.tv_nsec, sb2.st_mtimespec.tv_nsec);
 }


 FSTEST_EXIT();
}
