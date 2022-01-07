
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udftestargs {int ta_imgpath; int ta_devpath; } ;
typedef int atf_tc_t ;


 int errno ;
 int free (struct udftestargs*) ;
 int rump_pub_etfs_remove (int ) ;
 int unlink (int ) ;

int
udf_fstest_delfs(const atf_tc_t *tc, void *buf)
{
 int res;
 struct udftestargs *args = buf;

 res = rump_pub_etfs_remove(args->ta_devpath);
 if (res != 0) {
  errno = res;
  return -1;
 }

 res = unlink(args->ta_imgpath);
 if (res != 0)
  return res;

 free(args);

 return 0;
}
