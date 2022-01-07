
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int SRVPATH ;
 int unlink (int ) ;

int
zfs_fstest_delfs(const atf_tc_t *tc, void *buf)
{

 unlink(SRVPATH);
 return 0;
}
