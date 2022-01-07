
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_fd; } ;


 int O_RDWR ;
 int atf_tc_fail_errno (char*) ;
 int rump_sys_open (char*,int ) ;

__attribute__((used)) static void
fixputter(struct puffs_kargs *kargs)
{

 kargs->pa_fd = rump_sys_open("/dev/putter", O_RDWR);
 if (kargs->pa_fd == -1)
  atf_tc_fail_errno("open putter");
}
