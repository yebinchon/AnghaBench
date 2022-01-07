
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_kargs {int pa_fd; } ;


 int rump_sys_close (int ) ;

__attribute__((used)) static void
unfixputter(struct puffs_kargs *kargs)
{

 rump_sys_close(kargs->pa_fd);
}
