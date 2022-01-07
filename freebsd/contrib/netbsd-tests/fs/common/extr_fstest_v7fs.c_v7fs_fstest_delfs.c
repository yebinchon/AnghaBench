
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v7fstestargs {int ta_imgpath; int ta_devpath; } ;
typedef int atf_tc_t ;


 int free (struct v7fstestargs*) ;
 int rump_pub_etfs_remove (int ) ;
 int unlink (int ) ;

int
v7fs_fstest_delfs(const atf_tc_t *tc, void *buf)
{
 int res;
 struct v7fstestargs *args = buf;

 res = rump_pub_etfs_remove(args->ta_devpath);
 if (res != 0)
  return res;

 res = unlink(args->ta_imgpath);
 if (res != 0)
  return res;

 free(args);

 return 0;
}
