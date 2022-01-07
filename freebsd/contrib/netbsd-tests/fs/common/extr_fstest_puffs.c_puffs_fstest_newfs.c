
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int atf_tc_t ;


 int MAXPATHLEN ;
 char* __UNCONST (char*) ;
 char* atf_tc_get_config_var (int const*,char*) ;
 int donewfs (int const*,void**,char const*,int ,void*,char**) ;
 int sprintf (char*,char*,char*) ;

int
puffs_fstest_newfs(const atf_tc_t *tc, void **argp,
 const char *image, off_t size, void *fspriv)
{
 char dtfs_path[MAXPATHLEN];
 char *dtfsargv[6];
 char **theargv;


 sprintf(dtfs_path, "%s/../puffs/h_dtfs/h_dtfs",
     atf_tc_get_config_var(tc, "srcdir"));

 if (fspriv) {
  theargv = fspriv;
  theargv[0] = dtfs_path;
 } else {
  dtfsargv[0] = dtfs_path;
  dtfsargv[1] = __UNCONST("-i");
  dtfsargv[2] = __UNCONST("-s");
  dtfsargv[3] = __UNCONST("dtfs");
  dtfsargv[4] = __UNCONST("fictional");
  dtfsargv[5] = ((void*)0);

  theargv = dtfsargv;
 }

 return donewfs(tc, argp, image, size, fspriv, theargv);
}
