
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int SRVPATH ;
 int unlink (int ) ;
 int unmount (char const*,int) ;

int
zfs_fstest_unmount(const atf_tc_t *tc, const char *path, int flags)
{

 unmount(path, flags);
 unlink(SRVPATH);

 return 0;
}
