
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ making; scalar_t__ detect_magic; scalar_t__ block_offset; } ;
struct iso9660 {scalar_t__ temp_fd; TYPE_2__* cur_file; TYPE_1__ zisofs; scalar_t__ need_multi_extent; } ;
struct content {size_t size; int blocks; struct content* next; int offset_of_temp; } ;
struct archive_write {int archive; struct iso9660* format_data; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {struct content* cur_content; } ;


 int ARCHIVE_ERRNO_MISC ;
 size_t ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ENOMEM ;
 int LOGICAL_BLOCK_BITS ;
 int LOGICAL_BLOCK_SIZE ;
 size_t MULTI_EXTENT_SIZE ;
 int archive_set_error (int *,int ,char*) ;
 struct content* calloc (int,int) ;
 int wb_offset (struct archive_write*) ;
 scalar_t__ wb_write_padding_to_temp (struct archive_write*,size_t) ;
 scalar_t__ wb_write_to_temp (struct archive_write*,void const*,size_t) ;
 int zisofs_detect_magic (struct archive_write*,void const*,size_t) ;
 scalar_t__ zisofs_write_to_temp (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static ssize_t
write_iso9660_data(struct archive_write *a, const void *buff, size_t s)
{
 struct iso9660 *iso9660 = a->format_data;
 size_t ws;

 if (iso9660->temp_fd < 0) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Couldn't create temporary file");
  return (ARCHIVE_FATAL);
 }

 ws = s;
 if (iso9660->need_multi_extent &&
     (iso9660->cur_file->cur_content->size + ws) >=
       (MULTI_EXTENT_SIZE - LOGICAL_BLOCK_SIZE)) {
  struct content *con;
  size_t ts;

  ts = (size_t)(MULTI_EXTENT_SIZE - LOGICAL_BLOCK_SIZE -
      iso9660->cur_file->cur_content->size);

  if (iso9660->zisofs.detect_magic)
   zisofs_detect_magic(a, buff, ts);

  if (iso9660->zisofs.making) {
   if (zisofs_write_to_temp(a, buff, ts) != ARCHIVE_OK)
    return (ARCHIVE_FATAL);
  } else {
   if (wb_write_to_temp(a, buff, ts) != ARCHIVE_OK)
    return (ARCHIVE_FATAL);
   iso9660->cur_file->cur_content->size += ts;
  }


  if (wb_write_padding_to_temp(a,
      iso9660->cur_file->cur_content->size) != ARCHIVE_OK)
   return (ARCHIVE_FATAL);


  iso9660->cur_file->cur_content->blocks = (int)
      ((iso9660->cur_file->cur_content->size
       + LOGICAL_BLOCK_SIZE -1) >> LOGICAL_BLOCK_BITS);




  ws -= ts;
  buff = (const void *)(((const unsigned char *)buff) + ts);

  con = calloc(1, sizeof(*con));
  if (con == ((void*)0)) {
   archive_set_error(&a->archive, ENOMEM,
       "Can't allocate content data");
   return (ARCHIVE_FATAL);
  }
  con->offset_of_temp = wb_offset(a);
  iso9660->cur_file->cur_content->next = con;
  iso9660->cur_file->cur_content = con;



 }

 if (iso9660->zisofs.detect_magic)
  zisofs_detect_magic(a, buff, ws);

 if (iso9660->zisofs.making) {
  if (zisofs_write_to_temp(a, buff, ws) != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
 } else {
  if (wb_write_to_temp(a, buff, ws) != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  iso9660->cur_file->cur_content->size += ws;
 }

 return (s);
}
