
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ va_type; int va_nlink; } ;
struct puffs_node {TYPE_1__ pn_va; } ;
struct dtfs_file {int * df_dotdot; } ;
struct dtfs_dirent {struct puffs_node* dfd_node; } ;


 struct dtfs_file* DTFS_PTOF (struct puffs_node*) ;
 int LIST_REMOVE (struct dtfs_dirent*,int ) ;
 scalar_t__ VDIR ;
 int assert (int) ;
 int dfd_entries ;
 int dtfs_updatetimes (struct puffs_node*,int ,int,int) ;

void
dtfs_removedent(struct puffs_node *pn_dir, struct dtfs_dirent *dent)
{
 struct puffs_node *pn_file = dent->dfd_node;

 assert(pn_dir->pn_va.va_type == VDIR);
 LIST_REMOVE(dent, dfd_entries);
 if (pn_file->pn_va.va_type == VDIR) {
  struct dtfs_file *df = DTFS_PTOF(pn_file);

  pn_dir->pn_va.va_nlink--;
  df->df_dotdot = ((void*)0);
 }
 pn_file->pn_va.va_nlink--;
 assert(pn_dir->pn_va.va_nlink >= 2);

 dtfs_updatetimes(pn_dir, 0, 1, 1);
}
