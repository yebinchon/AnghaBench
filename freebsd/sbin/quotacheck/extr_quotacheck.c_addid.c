
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fileusage {int fu_id; int fu_name; struct fileusage* fu_next; } ;


 int FUHASH ;
 int USRQUOTA ;
 scalar_t__ aflag ;
 int bcopy (char*,int ,int) ;
 struct fileusage* calloc (int,int) ;
 int errx (int,char*) ;
 struct fileusage*** fuhead ;
 struct fileusage* lookup (int,int) ;
 int printf (char*,...) ;
 int sprintf (int ,char*,int) ;
 int strlen (char*) ;
 scalar_t__ vflag ;

struct fileusage *
addid(u_long id, int type, char *name, const char *fsname)
{
 struct fileusage *fup, **fhp;
 int len;

 if ((fup = lookup(id, type)) != ((void*)0))
  return (fup);
 if (name)
  len = strlen(name);
 else
  len = 0;
 if ((fup = calloc(1, sizeof(*fup) + len)) == ((void*)0))
  errx(1, "calloc failed");
 fhp = &fuhead[type][id & (FUHASH - 1)];
 fup->fu_next = *fhp;
 *fhp = fup;
 fup->fu_id = id;
 if (name)
  bcopy(name, fup->fu_name, len + 1);
 else {
  (void)sprintf(fup->fu_name, "%lu", id);
  if (vflag) {
   if (aflag && fsname != ((void*)0))
    (void)printf("%s: ", fsname);
   printf("unknown %cid: %lu\n",
       type == USRQUOTA ? 'u' : 'g', id);
  }
 }
 return (fup);
}
