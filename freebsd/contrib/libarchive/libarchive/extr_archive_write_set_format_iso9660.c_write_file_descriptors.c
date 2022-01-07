
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ blocks; scalar_t__ offset_of_temp; struct TYPE_8__* next; } ;
struct isofile {TYPE_4__* cur_content; TYPE_4__ content; int write_content; struct isofile* datanext; } ;
struct TYPE_7__ {struct isofile* first; } ;
struct TYPE_6__ {TYPE_1__* boot; int * catalog; } ;
struct iso9660 {TYPE_3__ data_file_list; TYPE_2__ el_torito; } ;
struct archive_write {struct iso9660* format_data; } ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {struct isofile* file; } ;


 int ARCHIVE_OK ;
 scalar_t__ LOGICAL_BLOCK_BITS ;
 int make_boot_catalog (struct archive_write*) ;
 int write_file_contents (struct archive_write*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
write_file_descriptors(struct archive_write *a)
{
 struct iso9660 *iso9660 = a->format_data;
 struct isofile *file;
 int64_t blocks, offset;
 int r;

 blocks = 0;
 offset = 0;


 if (iso9660->el_torito.catalog != ((void*)0)) {
  r = make_boot_catalog(a);
  if (r < 0)
   return (r);
 }


 if (iso9660->el_torito.boot != ((void*)0)) {
  file = iso9660->el_torito.boot->file;
  blocks = file->content.blocks;
  offset = file->content.offset_of_temp;
  if (offset != 0) {
   r = write_file_contents(a, offset,
       blocks << LOGICAL_BLOCK_BITS);
   if (r < 0)
    return (r);
   blocks = 0;
   offset = 0;
  }
 }


 for (file = iso9660->data_file_list.first;
     file != ((void*)0); file = file->datanext) {

  if (!file->write_content)
   continue;

  if ((offset + (blocks << LOGICAL_BLOCK_BITS)) <
       file->content.offset_of_temp) {
   if (blocks > 0) {
    r = write_file_contents(a, offset,
        blocks << LOGICAL_BLOCK_BITS);
    if (r < 0)
     return (r);
   }
   blocks = 0;
   offset = file->content.offset_of_temp;
  }

  file->cur_content = &(file->content);
  do {
   blocks += file->cur_content->blocks;

   file->cur_content = file->cur_content->next;
  } while (file->cur_content != ((void*)0));
 }


 if (blocks > 0) {
  r = write_file_contents(a, offset,
      blocks << LOGICAL_BLOCK_BITS);
  if (r < 0)
   return (r);
 }

 return (ARCHIVE_OK);
}
