
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_mount {int dtm_nfiles; } ;
struct dtfs_dirent {int dummy; } ;


 int DTFS_PTOF (struct puffs_node*) ;
 scalar_t__ VDIR ;
 int assert (int) ;
 struct dtfs_dirent* dtfs_dirgetbyname (int ,char const*,size_t) ;
 int dtfs_removedent (struct puffs_node*,struct dtfs_dirent*) ;
 int free (struct dtfs_dirent*) ;
 struct dtfs_mount* puffs_pn_getmntspecific (struct puffs_node*) ;

void
dtfs_nukenode(struct puffs_node *nukeme, struct puffs_node *pn_parent,
 const char *fname, size_t fnlen)
{
 struct dtfs_dirent *dfd;
 struct dtfs_mount *dtm;

 assert(pn_parent->pn_va.va_type == VDIR);

 dfd = dtfs_dirgetbyname(DTFS_PTOF(pn_parent), fname, fnlen);
 assert(dfd);

 dtm = puffs_pn_getmntspecific(nukeme);
 dtm->dtm_nfiles--;
 assert(dtm->dtm_nfiles >= 1);

 dtfs_removedent(pn_parent, dfd);
 free(dfd);
}
