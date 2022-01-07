
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int MNT_LOG ;
 int ffs_fstest_mount (int const*,void*,char const*,int) ;

int
ffslog_fstest_mount(const atf_tc_t *tc, void *buf, const char *path, int flags)
{

 return ffs_fstest_mount(tc, buf, path, flags | MNT_LOG);
}
