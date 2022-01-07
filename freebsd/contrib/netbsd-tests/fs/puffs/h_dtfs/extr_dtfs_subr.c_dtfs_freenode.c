
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ va_nlink; int va_type; int va_size; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_mount {int dtm_fsizes; } ;
struct dtfs_file {int df_datalen; struct dtfs_file* df_linktarget; struct dtfs_file** df_blocks; } ;


 int BLOCKNUM (int,int) ;
 int DTFS_BLOCKSHIFT ;
 struct dtfs_file* DTFS_PTOF (struct puffs_node*) ;







 int assert (int) ;
 int free (struct dtfs_file*) ;
 struct dtfs_mount* puffs_pn_getmntspecific (struct puffs_node*) ;
 int puffs_pn_put (struct puffs_node*) ;

void
dtfs_freenode(struct puffs_node *pn)
{
 struct dtfs_file *df = DTFS_PTOF(pn);
 struct dtfs_mount *dtm;
 int i;

 assert(pn->pn_va.va_nlink == 0);
 dtm = puffs_pn_getmntspecific(pn);

 switch (pn->pn_va.va_type) {
 case 129:
  assert(dtm->dtm_fsizes >= pn->pn_va.va_size);
  dtm->dtm_fsizes -= pn->pn_va.va_size;
  for (i = 0; i < BLOCKNUM(df->df_datalen, DTFS_BLOCKSHIFT); i++)
   free(df->df_blocks[i]);
  if (df->df_datalen > i << DTFS_BLOCKSHIFT)
   free(df->df_blocks[i]);
  break;
 case 130:
  free(df->df_linktarget);
  break;
 case 133:
 case 134:
 case 132:
 case 128:
 case 131:
  break;
 default:
  assert(0);
  break;
 }

 free(df);
 puffs_pn_put(pn);
}
