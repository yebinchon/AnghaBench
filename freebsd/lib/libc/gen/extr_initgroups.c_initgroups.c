
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;


 int ENOMEM ;
 int _SC_NGROUPS_MAX ;
 int free (int *) ;
 int getgrouplist (char const*,int ,int *,int*) ;
 int * malloc (int) ;
 int setgroups (int,int *) ;
 int sysconf (int ) ;

int
initgroups(const char *uname, gid_t agroup)
{
 int ngroups, ret;
 long ngroups_max;
 gid_t *groups;





 ngroups_max = sysconf(_SC_NGROUPS_MAX) + 2;
 if ((groups = malloc(sizeof(*groups) * ngroups_max)) == ((void*)0))
  return (ENOMEM);

 ngroups = (int)ngroups_max;
 getgrouplist(uname, agroup, groups, &ngroups);
 ret = setgroups(ngroups, groups);
 free(groups);
 return (ret);
}
