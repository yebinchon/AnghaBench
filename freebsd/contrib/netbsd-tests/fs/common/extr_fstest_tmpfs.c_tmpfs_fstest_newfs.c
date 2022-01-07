
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ta_root_mode; int ta_size_max; int ta_version; } ;
struct tmpfstestargs {TYPE_1__ ta_uargs; } ;
typedef int off_t ;
typedef int atf_tc_t ;


 int TMPFS_ARGS_VERSION ;
 struct tmpfstestargs* calloc (int,int) ;
 int rump_init () ;

int
tmpfs_fstest_newfs(const atf_tc_t *tc, void **buf, const char *image,
    off_t size, void *fspriv)
{
 int res;
 struct tmpfstestargs *args;

 res = rump_init();
 if (res != 0)
  return res;

 args = calloc(1, sizeof(*args));
 if (args == ((void*)0))
  return -1;

 args->ta_uargs.ta_version = TMPFS_ARGS_VERSION;
 args->ta_uargs.ta_root_mode = 0777;
 args->ta_uargs.ta_size_max = size;

 *buf = args;

 return 0;
}
