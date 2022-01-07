
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct puffs_usermount {int dummy; } ;
struct TYPE_2__ {scalar_t__ va_type; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct puffs_cred {int dummy; } ;
struct dtfs_file {int df_linktarget; } ;


 struct dtfs_file* DTFS_CTOF (void*) ;
 scalar_t__ VLNK ;
 int assert (int) ;
 int strlcpy (char*,int ,size_t) ;
 size_t strlen (char*) ;

int
dtfs_node_readlink(struct puffs_usermount *pu, void *opc,
 const struct puffs_cred *cred, char *linkname, size_t *linklen)
{
 struct dtfs_file *df = DTFS_CTOF(opc);
 struct puffs_node *pn = opc;

 assert(pn->pn_va.va_type == VLNK);
 strlcpy(linkname, df->df_linktarget, *linklen);
 *linklen = strlen(linkname);

 return 0;
}
