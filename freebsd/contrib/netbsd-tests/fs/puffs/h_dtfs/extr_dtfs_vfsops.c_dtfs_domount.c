
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct puffs_node {int dummy; } ;
struct dtfs_mount {int dtm_nextfileid; int dtm_nfiles; int dtm_pollent; scalar_t__ dtm_fsizes; } ;
struct dtfs_file {int * df_dotdot; } ;
struct TYPE_2__ {scalar_t__ (* pfunc ) (struct puffs_usermount*,char const*,int ) ;int vt; int tstr; } ;


 int LIST_INIT (int *) ;
 int NTYPES ;
 int VDIR ;
 struct dtfs_file* dtfs_newdir () ;
 int errx (int,char*) ;
 int fprintf (int ,char*,char const*) ;
 struct dtfs_mount* puffs_getspecific (struct puffs_usermount*) ;
 struct puffs_node* puffs_pn_new (struct puffs_usermount*,struct dtfs_file*) ;
 int puffs_setroot (struct puffs_usermount*,struct puffs_node*) ;
 int rtnorm (struct puffs_usermount*,int *,int ) ;
 TYPE_1__* rtypes ;
 int stderr ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,int ) ;
 scalar_t__ stub1 (struct puffs_usermount*,char const*,int ) ;

int
dtfs_domount(struct puffs_usermount *pu, const char *typestr)
{
 struct dtfs_mount *dtm;
 struct dtfs_file *dff;
 struct puffs_node *pn;
 int i;


 dtm = puffs_getspecific(pu);
 dtm->dtm_nextfileid = 3;
 dtm->dtm_nfiles = 1;
 dtm->dtm_fsizes = 0;
 LIST_INIT(&dtm->dtm_pollent);





 dff = dtfs_newdir();
 dff->df_dotdot = ((void*)0);
 pn = puffs_pn_new(pu, dff);
 if (!pn)
  errx(1, "puffs_newpnode");
 puffs_setroot(pu, pn);

 if (!typestr) {
  rtnorm(pu, ((void*)0), VDIR);
 } else {
  for (i = 0; i < NTYPES; i++) {
   if (strncmp(rtypes[i].tstr, typestr,
       strlen(rtypes[i].tstr)) == 0) {
    if (rtypes[i].pfunc(pu, typestr,
        rtypes[i].vt) != 0) {
     fprintf(stderr, "failed to parse "
         "\"%s\"\n", typestr);
     return 1;
    }
    break;
   }
  }
  if (i == NTYPES) {
   fprintf(stderr, "no maching type for %s\n", typestr);
   return 1;
  }
 }

 return 0;
}
