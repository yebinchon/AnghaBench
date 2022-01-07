
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path_table {scalar_t__ cnt; struct isoent* first; } ;
struct TYPE_5__ {struct isoent* first; } ;
struct TYPE_4__ {struct isoent* first; } ;
struct isoent {struct isoent* ptnext; struct isoent* drnext; TYPE_2__ subdirs; int dir; TYPE_1__ children; } ;
struct TYPE_6__ {struct isoent* rootent; struct path_table* pathtbl; } ;
struct iso9660 {TYPE_3__ primary; } ;
struct archive_write {struct iso9660* format_data; } ;


 int ARCHIVE_OK ;
 int MAX_DEPTH ;
 int isoent_add_child_head (struct isoent*,struct isoent*) ;
 int isoent_collect_dirs (TYPE_3__*,struct isoent*,int) ;
 struct isoent* isoent_find_child (struct isoent*,char*) ;
 int isoent_remove_child (struct isoent*,struct isoent*) ;
 int isoent_rr_move_dir (struct archive_write*,struct isoent**,struct isoent*,struct isoent**) ;
 struct isoent* path_table_last_entry (struct path_table*) ;

__attribute__((used)) static int
isoent_rr_move(struct archive_write *a)
{
 struct iso9660 *iso9660 = a->format_data;
 struct path_table *pt;
 struct isoent *rootent, *rr_moved;
 struct isoent *np, *last;
 int r;

 pt = &(iso9660->primary.pathtbl[MAX_DEPTH-1]);

 if (pt->cnt == 0)
  return (ARCHIVE_OK);

 rootent = iso9660->primary.rootent;


 rr_moved = isoent_find_child(rootent, "rr_moved");
 if (rr_moved != ((void*)0) &&
     rr_moved != rootent->children.first) {





  isoent_remove_child(rootent, rr_moved);


  isoent_add_child_head(rootent, rr_moved);
 }





 np = pt->first;
 while (np != ((void*)0)) {
  last = path_table_last_entry(pt);
  for (; np != ((void*)0); np = np->ptnext) {
   struct isoent *mvent;
   struct isoent *newent;

   if (!np->dir)
    continue;
   for (mvent = np->subdirs.first;
       mvent != ((void*)0); mvent = mvent->drnext) {
    r = isoent_rr_move_dir(a, &rr_moved,
        mvent, &newent);
    if (r < 0)
     return (r);
    isoent_collect_dirs(&(iso9660->primary),
        newent, 2);
   }
  }



  np = last->ptnext;
 }

 return (ARCHIVE_OK);
}
