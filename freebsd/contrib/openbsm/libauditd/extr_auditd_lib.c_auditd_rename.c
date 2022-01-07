
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tname ;
typedef int fname ;


 int MAXPATHLEN ;
 scalar_t__ auditd_dist ;
 int inject_dist (char const*,char*,int) ;
 int rename (char const*,char const*) ;

int
auditd_rename(const char *fromname, const char *toname)
{
 char fname[MAXPATHLEN], tname[MAXPATHLEN];

 if (auditd_dist) {
  inject_dist(fromname, fname, sizeof(fname));
  inject_dist(toname, tname, sizeof(tname));

  (void) rename(fname, tname);
 }

 return (rename(fromname, toname));
}
