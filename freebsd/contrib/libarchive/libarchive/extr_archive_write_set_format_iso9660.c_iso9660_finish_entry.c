
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ making; } ;
struct iso9660 {scalar_t__ bytes_remaining; TYPE_4__* cur_file; TYPE_2__ zisofs; } ;
struct archive_write {size_t null_length; int nulls; struct iso9660* format_data; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_8__ {TYPE_3__* cur_content; TYPE_1__ content; int entry; } ;
struct TYPE_7__ {int size; int blocks; } ;


 scalar_t__ AE_IFREG ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int LOGICAL_BLOCK_BITS ;
 int LOGICAL_BLOCK_SIZE ;
 scalar_t__ archive_entry_filetype (int ) ;
 int isofile_add_data_file (struct iso9660*,TYPE_4__*) ;
 int wb_write_padding_to_temp (struct archive_write*,int) ;
 scalar_t__ write_iso9660_data (struct archive_write*,int ,size_t) ;
 int zisofs_finish_entry (struct archive_write*) ;

__attribute__((used)) static int
iso9660_finish_entry(struct archive_write *a)
{
 struct iso9660 *iso9660 = a->format_data;

 if (iso9660->cur_file == ((void*)0))
  return (ARCHIVE_OK);
 if (archive_entry_filetype(iso9660->cur_file->entry) != AE_IFREG)
  return (ARCHIVE_OK);
 if (iso9660->cur_file->content.size == 0)
  return (ARCHIVE_OK);


 while (iso9660->bytes_remaining > 0) {
  size_t s;

  s = (iso9660->bytes_remaining > a->null_length)?
      a->null_length: (size_t)iso9660->bytes_remaining;
  if (write_iso9660_data(a, a->nulls, s) < 0)
   return (ARCHIVE_FATAL);
  iso9660->bytes_remaining -= s;
 }

 if (iso9660->zisofs.making && zisofs_finish_entry(a) != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 if (wb_write_padding_to_temp(a, iso9660->cur_file->cur_content->size)
     != ARCHIVE_OK)
  return (ARCHIVE_FATAL);


 iso9660->cur_file->cur_content->blocks = (int)
     ((iso9660->cur_file->cur_content->size
      + LOGICAL_BLOCK_SIZE -1) >> LOGICAL_BLOCK_BITS);


 isofile_add_data_file(iso9660, iso9660->cur_file);

 return (ARCHIVE_OK);
}
