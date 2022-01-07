
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puffs_usermount {int dummy; } ;
struct puffs_node {int dummy; } ;
struct puffs_cn {int pcn_namelen; int pcn_name; } ;
struct dtfs_dirent {int dfd_name; int dfd_namelen; void* dfd_node; } ;


 int dtfs_adddent (struct puffs_node*,struct dtfs_dirent*) ;
 int dtfs_updatetimes (void*,int ,int,int ) ;
 struct dtfs_dirent* emalloc (int) ;
 int estrndup (int ,int ) ;
 int strlen (int ) ;

int
dtfs_node_link(struct puffs_usermount *pu, void *opc, void *targ,
 const struct puffs_cn *pcn)
{
 struct puffs_node *pn_dir = opc;
 struct dtfs_dirent *dfd;

 dfd = emalloc(sizeof(struct dtfs_dirent));
 dfd->dfd_node = targ;
 dfd->dfd_name = estrndup(pcn->pcn_name, pcn->pcn_namelen);
 dfd->dfd_namelen = strlen(dfd->dfd_name);
 dtfs_adddent(pn_dir, dfd);

 dtfs_updatetimes(targ, 0, 1, 0);

 return 0;
}
