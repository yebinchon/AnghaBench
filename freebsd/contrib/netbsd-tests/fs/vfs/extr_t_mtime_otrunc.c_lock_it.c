
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_mtime; } ;


 int LOCKFILE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int rump_sys_close (int) ;
 int rump_sys_open (int ,int,int) ;
 scalar_t__ rump_sys_stat (int ,struct stat*) ;

__attribute__((used)) static time_t
lock_it(void)
{
 struct stat st;

 if (rump_sys_stat(LOCKFILE, &st) != 0)
  st.st_mtime = 0;

 int f = rump_sys_open(LOCKFILE, O_WRONLY|O_CREAT|O_TRUNC, 0666);
 if (f == -1) return 0;
 rump_sys_close(f);

 return st.st_mtime;
}
