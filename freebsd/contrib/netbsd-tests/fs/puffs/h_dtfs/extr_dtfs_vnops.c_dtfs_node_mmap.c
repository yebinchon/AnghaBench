
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
struct puffs_usermount {int dummy; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_mount {int dtm_allowprot; } ;


 int EACCES ;
 struct dtfs_mount* puffs_getspecific (struct puffs_usermount*) ;

int
dtfs_node_mmap(struct puffs_usermount *pu, void *opc, vm_prot_t prot,
 const struct puffs_cred *pcr)
{
 struct dtfs_mount *dtm = puffs_getspecific(pu);

 if ((dtm->dtm_allowprot & prot) != prot)
  return EACCES;

 return 0;
}
