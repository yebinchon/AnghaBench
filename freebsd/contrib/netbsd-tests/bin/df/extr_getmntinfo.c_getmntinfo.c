
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int dummy; } ;


 struct statvfs* allstatvfs ;
 int setup_filer () ;
 int setup_ld0g () ;
 int setup_pr23600 () ;
 int setup_strpct () ;
 int sfused ;

int
getmntinfo(struct statvfs **mntbuf, int flags)
{

 setup_filer();
 setup_ld0g();
 setup_strpct();
 setup_pr23600();

 *mntbuf = allstatvfs;
 return (sfused);
}
