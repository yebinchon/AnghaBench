
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 scalar_t__ ENAMETOOLONG ;
 scalar_t__ FSTYPE_RUMPFS (int const*) ;
 int O_CREAT ;
 int O_RDWR ;
 int _PC_NAME_MAX ;
 int _PC_NO_TRUNC ;
 int atf_tc_fail_errno (char*) ;
 int atf_tc_skip (char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memset (char*,char,size_t) ;
 int rump_sys_chdir (char const*) ;
 int rump_sys_close (int) ;
 int rump_sys_open (char*,int,int) ;
 long rump_sys_pathconf (char*,int ) ;
 int rump_sys_rename (char*,char*) ;
 int rump_sys_unlink (char*) ;

__attribute__((used)) static void
rename_nametoolong(const atf_tc_t *tc, const char *mp)
{
 char *name;
 int res, fd;
 long val;
 size_t len;

 if (FSTYPE_RUMPFS(tc))
  atf_tc_skip("rename not supported by file system");

 if (rump_sys_chdir(mp) == -1)
  atf_tc_fail_errno("chdir mountpoint");

 val = rump_sys_pathconf(".", _PC_NAME_MAX);
 if (val == -1)
  atf_tc_fail_errno("pathconf");

 len = val + 1;
 name = malloc(len+1);
 if (name == ((void*)0))
  atf_tc_fail_errno("malloc");

 memset(name, 'a', len);
 *(name+len) = '\0';

 fd = rump_sys_open("dummy", O_RDWR|O_CREAT, 0666);
 if (fd == -1)
  atf_tc_fail_errno("open");
 if (rump_sys_close(fd) == -1)
  atf_tc_fail_errno("close");

 val = rump_sys_pathconf(".", _PC_NO_TRUNC);
 if (val == -1)
  atf_tc_fail_errno("pathconf");

 res = rump_sys_rename("dummy", name);
 if (val != 0 && (res != -1 || errno != ENAMETOOLONG))
  atf_tc_fail_errno("rename");

 if (val == 0 && rump_sys_unlink(name) == -1)
  atf_tc_fail_errno("unlink");

 free(name);

 rump_sys_chdir("/");
}
