
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {int location; struct TYPE_18__* next; scalar_t__ blocks; } ;
struct isofile {TYPE_9__* cur_content; TYPE_9__ content; int write_content; struct isofile* datanext; } ;
struct TYPE_16__ {struct isoent* first; } ;
struct isoent {struct isoent* drnext; struct isoent* parent; TYPE_7__ subdirs; TYPE_3__* file; } ;
struct TYPE_17__ {struct isofile* first; } ;
struct TYPE_15__ {int max_depth; struct isoent* rootent; } ;
struct TYPE_14__ {scalar_t__ rr; scalar_t__ joliet; } ;
struct TYPE_13__ {struct isoent* rootent; } ;
struct TYPE_10__ {int media_type; struct isoent* boot; struct isoent* catalog; } ;
struct iso9660 {scalar_t__ total_file_block; TYPE_8__ data_file_list; TYPE_6__ primary; TYPE_5__ opt; TYPE_4__ joliet; TYPE_1__ el_torito; } ;
struct TYPE_11__ {int location; int blocks; } ;
struct TYPE_12__ {TYPE_2__ content; int entry; } ;


 int LOGICAL_BLOCK_BITS ;
 int LOGICAL_BLOCK_SIZE ;
 scalar_t__ OPT_RR_DISABLED ;
 int _isoent_file_location (struct iso9660*,struct isoent*,int*) ;
 int archive_entry_size (int ) ;
 size_t fd_boot_image_size (int ) ;

__attribute__((used)) static void
isoent_setup_file_location(struct iso9660 *iso9660, int location)
{
 struct isoent *isoent;
 struct isoent *np;
 struct isofile *file;
 size_t size;
 int block;
 int depth;
 int joliet;
 int symlocation;
 int total_block;

 iso9660->total_file_block = 0;
 if ((isoent = iso9660->el_torito.catalog) != ((void*)0)) {
  isoent->file->content.location = location;
  block = (int)((archive_entry_size(isoent->file->entry) +
      LOGICAL_BLOCK_SIZE -1) >> LOGICAL_BLOCK_BITS);
  location += block;
  iso9660->total_file_block += block;
 }
 if ((isoent = iso9660->el_torito.boot) != ((void*)0)) {
  isoent->file->content.location = location;
  size = fd_boot_image_size(iso9660->el_torito.media_type);
  if (size == 0)
   size = (size_t)archive_entry_size(isoent->file->entry);
  block = ((int)size + LOGICAL_BLOCK_SIZE -1)
      >> LOGICAL_BLOCK_BITS;
  location += block;
  iso9660->total_file_block += block;
  isoent->file->content.blocks = block;
 }

 depth = 0;
 symlocation = -16;
 if (!iso9660->opt.rr && iso9660->opt.joliet) {
  joliet = 1;
  np = iso9660->joliet.rootent;
 } else {
  joliet = 0;
  np = iso9660->primary.rootent;
 }
 do {
  _isoent_file_location(iso9660, np, &symlocation);

  if (np->subdirs.first != ((void*)0) &&
      (joliet ||
      ((iso9660->opt.rr == OPT_RR_DISABLED &&
        depth + 2 < iso9660->primary.max_depth) ||
       (iso9660->opt.rr &&
        depth + 1 < iso9660->primary.max_depth)))) {

   np = np->subdirs.first;
   depth++;
   continue;
  }
  while (np != np->parent) {
   if (np->drnext == ((void*)0)) {

    np = np->parent;
    depth--;
   } else {
    np = np->drnext;
    break;
   }
  }
 } while (np != np->parent);

 total_block = 0;
 for (file = iso9660->data_file_list.first;
     file != ((void*)0); file = file->datanext) {

  if (!file->write_content)
   continue;

  file->cur_content = &(file->content);
  do {
   file->cur_content->location = location;
   location += file->cur_content->blocks;
   total_block += file->cur_content->blocks;

   file->cur_content = file->cur_content->next;
  } while (file->cur_content != ((void*)0));
 }
 iso9660->total_file_block += total_block;
}
