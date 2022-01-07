
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct dirent {scalar_t__ d_type; int d_name; } ;
typedef int dbuf ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_ERRNO (int,int) ;
 scalar_t__ DT_WHT ;
 int ENOENT ;
 int FSTEST_ENTER () ;
 int FSTEST_EXIT () ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int RL (int) ;
 char* TFILE ;
 struct dirent* _DIRENT_NEXT (struct dirent*) ;
 int atf_tc_fail (char*,...) ;
 int mountunion (char const*,char*) ;
 int rump_sys_close (int) ;
 int rump_sys_getdents (int,char*,int) ;
 int rump_sys_open (char const*,int ) ;
 int rump_sys_stat (char*,struct stat*) ;
 int rump_sys_unlink (char*) ;
 int rump_sys_unmount (char const*,int ) ;
 scalar_t__ strcmp (int ,char*) ;
 int strerror (int) ;
 int xput_tfile (char const*,char*) ;
 int xread_tfile (char const*,char*) ;

__attribute__((used)) static void
basic(const atf_tc_t *tc, const char *mp)
{
 char lowerpath[MAXPATHLEN];
 char dbuf[8192];
 struct stat sb;
 struct dirent *dp;
 int error, fd, dsize;

 mountunion(mp, lowerpath);


 xput_tfile(lowerpath, TFILE);


 error = xread_tfile(mp, TFILE);
 if (error != 0)
  atf_tc_fail("union compare failed: %d (%s)",
      error, strerror(error));


 xput_tfile(mp, "kiekko");
 if ((error = xread_tfile(lowerpath, "kiekko")) != ENOENT)
  atf_tc_fail("invisibility failed: %d (%s)",
      error, strerror(error));


 FSTEST_ENTER();
 RL(rump_sys_unlink(TFILE));
 ATF_REQUIRE_ERRNO(ENOENT, rump_sys_stat(TFILE, &sb) == -1);
 FSTEST_EXIT();


 RL(fd = rump_sys_open(mp, O_RDONLY));
 RL(dsize = rump_sys_getdents(fd, dbuf, sizeof(dbuf)));
 for (dp = (struct dirent *)dbuf;
     (char *)dp < dbuf + dsize;
     dp = _DIRENT_NEXT(dp)) {
  if (strcmp(dp->d_name, TFILE) == 0 && dp->d_type != DT_WHT)
   atf_tc_fail("removed file non-white-outed");
 }
 RL(rump_sys_close(fd));

 RL(rump_sys_unmount(mp, 0));
}
