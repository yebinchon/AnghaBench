
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int atf_tc_t ;


 int ATF_REQUIRE_MSG (int,char*,int,unsigned long,unsigned long) ;
 int atf_tc_fail (char*) ;
 scalar_t__ lock_it () ;
 int printf (char*,long) ;
 int rump_sys_chdir (char const*) ;
 int sleep (int) ;

__attribute__((used)) static void
otrunc_mtime_update(const atf_tc_t *tc, const char *path)
{
 time_t last_ts = 0;
 int res;



 res = rump_sys_chdir(path);
 if (res == -1)
  atf_tc_fail("chdir failed");

 for (int i = 0; i < 5; i++) {
  time_t l = lock_it();
  printf("last lock: %ld\n", (long)l);
  ATF_REQUIRE_MSG(i == 0 || l > last_ts,
      "iteration %d: lock time did not increase, old time %lu, "
      "new time %lu", i,
      (unsigned long)last_ts, (unsigned long)l);
  last_ts = l;
  sleep(2);
 }
 rump_sys_chdir("/");
}
