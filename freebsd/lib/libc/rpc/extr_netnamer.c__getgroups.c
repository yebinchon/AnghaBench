
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; scalar_t__* gr_mem; } ;
typedef int gid_t ;


 int NGRPS ;
 int endgrent () ;
 int fprintf (int ,char*,char*) ;
 struct group* getgrent () ;
 int setgrent () ;
 int stderr ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static int
_getgroups(char *uname, gid_t groups[NGRPS])
{
 gid_t ngroups = 0;
 struct group *grp;
 int i;
 int j;
 int filter;

 setgrent();
 while ((grp = getgrent())) {
  for (i = 0; grp->gr_mem[i]; i++)
   if (!strcmp(grp->gr_mem[i], uname)) {
    if (ngroups == NGRPS) {




     goto toomany;
    }

    filter = 0;
    for (j = 0; j < ngroups; j++)
     if (groups[j] == grp->gr_gid) {
      filter++;
      break;
     }
    if (!filter)
     groups[ngroups++] = grp->gr_gid;
   }
 }
toomany:
 endgrent();
 return (ngroups);
}
