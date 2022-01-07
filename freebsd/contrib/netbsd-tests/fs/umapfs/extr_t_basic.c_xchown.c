
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int atf_tc_fail_errno (char*,char const*) ;
 int rump_sys_chown (char const*,int ,int ) ;

__attribute__((used)) static void
xchown(const char *path, uid_t uid, gid_t gid)
{

 if (rump_sys_chown(path, uid, gid) == -1)
  atf_tc_fail_errno("chown %s failed", path);
}
