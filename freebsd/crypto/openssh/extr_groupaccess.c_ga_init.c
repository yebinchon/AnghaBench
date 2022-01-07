
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_name; } ;
typedef int gid_t ;


 int MAX (int,int ) ;
 int NGROUPS_MAX ;
 int _SC_NGROUPS_MAX ;
 int free (int *) ;
 int ga_free () ;
 struct group* getgrgid (int ) ;
 int getgrouplist (char const*,int ,int *,int*) ;
 int * groups_byname ;
 int logit (char*) ;
 int ngroups ;
 int sysconf (int ) ;
 void* xcalloc (int,int) ;
 int xstrdup (int ) ;

int
ga_init(const char *user, gid_t base)
{
 gid_t *groups_bygid;
 int i, j;
 struct group *gr;

 if (ngroups > 0)
  ga_free();

 ngroups = NGROUPS_MAX;




 groups_bygid = xcalloc(ngroups, sizeof(*groups_bygid));
 groups_byname = xcalloc(ngroups, sizeof(*groups_byname));

 if (getgrouplist(user, base, groups_bygid, &ngroups) == -1)
  logit("getgrouplist: groups list too small");
 for (i = 0, j = 0; i < ngroups; i++)
  if ((gr = getgrgid(groups_bygid[i])) != ((void*)0))
   groups_byname[j++] = xstrdup(gr->gr_name);
 free(groups_bygid);
 return (ngroups = j);
}
