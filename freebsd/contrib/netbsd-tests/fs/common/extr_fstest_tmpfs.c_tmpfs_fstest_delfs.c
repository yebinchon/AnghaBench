
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfstestargs {int dummy; } ;
typedef int atf_tc_t ;


 int free (struct tmpfstestargs*) ;

int
tmpfs_fstest_delfs(const atf_tc_t *tc, void *buf)
{
 struct tmpfstestargs *args = buf;

 free(args);

 return 0;
}
