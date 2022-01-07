
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int dummy; } ;


 int ST_WAIT ;
 int atf_tc_fail_errno (char*) ;
 int rump_sys_statvfs1 (char const*,struct statvfs*,int ) ;

__attribute__((used)) static void
syncbar(const char *fs)
{
 struct statvfs svb;

 if (rump_sys_statvfs1(fs, &svb, ST_WAIT) == -1)
  atf_tc_fail_errno("statvfs");
}
