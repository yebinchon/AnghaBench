
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdd {int max_depth; int * pathtbl; struct isoent* rootent; } ;
struct TYPE_2__ {struct isoent* first; } ;
struct isoent {struct isoent* drnext; struct isoent* parent; TYPE_1__ subdirs; } ;


 int ARCHIVE_OK ;
 int path_table_add_entry (int *,struct isoent*) ;

__attribute__((used)) static int
isoent_collect_dirs(struct vdd *vdd, struct isoent *rootent, int depth)
{
 struct isoent *np;

 if (rootent == ((void*)0))
  rootent = vdd->rootent;
 np = rootent;
 do {

  path_table_add_entry(&(vdd->pathtbl[depth]), np);

  if (np->subdirs.first != ((void*)0) && depth + 1 < vdd->max_depth) {

   np = np->subdirs.first;
   depth++;
   continue;
  }
  while (np != rootent) {
   if (np->drnext == ((void*)0)) {

    np = np->parent;
    depth--;
   } else {
    np = np->drnext;
    break;
   }
  }
 } while (np != rootent);

 return (ARCHIVE_OK);
}
