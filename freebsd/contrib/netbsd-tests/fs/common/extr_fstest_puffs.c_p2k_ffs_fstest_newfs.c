
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int atf_tc_t ;


 scalar_t__ EEXIST ;
 char* __UNCONST (char const*) ;
 int donewfs (int const*,void**,char const*,int ,void*,char**) ;
 scalar_t__ errno ;
 int ffs_fstest_delfs (int const*,void**) ;
 int ffs_fstest_newfs (int const*,void**,char const*,int ,void*) ;
 int mkdir (char*,int) ;
 int rump_init () ;
 int setenv (char*,char*,int) ;

int
p2k_ffs_fstest_newfs(const atf_tc_t *tc, void **argp,
 const char *image, off_t size, void *fspriv)
{
 char *rumpffs_argv[5];
 int rv;

 rump_init();
 if ((rv = ffs_fstest_newfs(tc, argp, image, size, fspriv)) != 0)
  return rv;
 if (mkdir("p2kffsfake", 0777) == -1 && errno != EEXIST)
  return errno;

 setenv("P2K_NODETACH", "1", 1);
 rumpffs_argv[0] = __UNCONST("rump_ffs");
 rumpffs_argv[1] = __UNCONST(image);
 rumpffs_argv[2] = __UNCONST("p2kffsfake");
 rumpffs_argv[3] = ((void*)0);

 if ((rv = donewfs(tc, argp, image, size, fspriv, rumpffs_argv)) != 0)
  ffs_fstest_delfs(tc, argp);
 return rv;
}
