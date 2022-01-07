
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * first; int ** last; scalar_t__ cnt; } ;
struct TYPE_6__ {struct isoent* first; struct isoent** last; scalar_t__ cnt; } ;
struct isoent {scalar_t__ dir; TYPE_4__* file; TYPE_3__ subdirs; TYPE_2__ children; struct isoent* parent; struct isoent* chnext; struct isoent* rr_child; struct isoent* rr_parent; } ;
struct TYPE_5__ {int * pathtbl; struct isoent* rootent; } ;
struct iso9660 {TYPE_1__ primary; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
struct TYPE_8__ {int entry; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 scalar_t__ archive_entry_nlink (int ) ;
 int archive_entry_set_nlink (int ,scalar_t__) ;
 int archive_set_error (int *,int ,char*) ;
 int isoent_add_child_head (struct isoent*,struct isoent*) ;
 int isoent_add_child_tail (struct isoent*,struct isoent*) ;
 struct isoent* isoent_clone (struct isoent*) ;
 struct isoent* isoent_create_virtual_dir (struct archive_write*,struct iso9660*,char*) ;
 int path_table_add_entry (int *,struct isoent*) ;

__attribute__((used)) static int
isoent_rr_move_dir(struct archive_write *a, struct isoent **rr_moved,
    struct isoent *curent, struct isoent **newent)
{
 struct iso9660 *iso9660 = a->format_data;
 struct isoent *rrmoved, *mvent, *np;

 if ((rrmoved = *rr_moved) == ((void*)0)) {
  struct isoent *rootent = iso9660->primary.rootent;



  rrmoved = isoent_create_virtual_dir(a, iso9660, "rr_moved");
  if (rrmoved == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate memory");
   return (ARCHIVE_FATAL);
  }

  isoent_add_child_head(rootent, rrmoved);
  archive_entry_set_nlink(rootent->file->entry,
      archive_entry_nlink(rootent->file->entry) + 1);

  path_table_add_entry(&(iso9660->primary.pathtbl[1]), rrmoved);

  *rr_moved = rrmoved;
 }




 mvent = isoent_clone(curent);
 if (mvent == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }

 mvent->rr_parent = curent->parent;
 curent->rr_child = mvent;



 if (curent->children.first != ((void*)0)) {
  *mvent->children.last = curent->children.first;
  mvent->children.last = curent->children.last;
 }
 for (np = mvent->children.first; np != ((void*)0); np = np->chnext)
  np->parent = mvent;
 mvent->children.cnt = curent->children.cnt;
 curent->children.cnt = 0;
 curent->children.first = ((void*)0);
 curent->children.last = &curent->children.first;

 if (curent->subdirs.first != ((void*)0)) {
  *mvent->subdirs.last = curent->subdirs.first;
  mvent->subdirs.last = curent->subdirs.last;
 }
 mvent->subdirs.cnt = curent->subdirs.cnt;
 curent->subdirs.cnt = 0;
 curent->subdirs.first = ((void*)0);
 curent->subdirs.last = &curent->subdirs.first;




 isoent_add_child_tail(rrmoved, mvent);
 archive_entry_set_nlink(rrmoved->file->entry,
     archive_entry_nlink(rrmoved->file->entry) + 1);





 curent->dir = 0;

 *newent = mvent;

 return (ARCHIVE_OK);
}
