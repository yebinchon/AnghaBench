
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int ffs_fstest_delfs (int const*,void*) ;

int
p2k_ffs_fstest_delfs(const atf_tc_t *tc, void *arg)
{

 return ffs_fstest_delfs(tc, arg);
}
