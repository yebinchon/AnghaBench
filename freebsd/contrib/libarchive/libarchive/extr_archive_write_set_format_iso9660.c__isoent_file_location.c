
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; int location; } ;
struct isofile {int write_content; TYPE_3__ content; int entry; int * hardlink_target; scalar_t__ boot; } ;
struct TYPE_4__ {int cnt; } ;
struct isoent {struct isofile* file; scalar_t__ dir; TYPE_1__ children; struct isoent** children_sorted; } ;
struct TYPE_5__ {struct isoent* boot; } ;
struct iso9660 {TYPE_2__ el_torito; } ;


 scalar_t__ AE_IFLNK ;
 scalar_t__ archive_entry_filetype (int ) ;

__attribute__((used)) static void
_isoent_file_location(struct iso9660 *iso9660, struct isoent *isoent,
    int *symlocation)
{
 struct isoent **children;
 int n;

 if (isoent->children.cnt == 0)
  return;

 children = isoent->children_sorted;
 for (n = 0; n < isoent->children.cnt; n++) {
  struct isoent *np;
  struct isofile *file;

  np = children[n];
  if (np->dir)
   continue;
  if (np == iso9660->el_torito.boot)
   continue;
  file = np->file;
  if (file->boot || file->hardlink_target != ((void*)0))
   continue;
  if (archive_entry_filetype(file->entry) == AE_IFLNK ||
      file->content.size == 0) {




   file->content.location = (*symlocation)--;
   continue;
  }

  file->write_content = 1;
 }
}
