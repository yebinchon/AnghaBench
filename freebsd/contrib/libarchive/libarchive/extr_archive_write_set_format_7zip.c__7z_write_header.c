
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ size; int flg; scalar_t__ dir; scalar_t__ name_len; } ;
struct archive_write {int archive; scalar_t__ format_data; } ;
struct archive_rb_node {int dummy; } ;
struct archive_entry {int dummy; } ;
struct _7zip {scalar_t__ entry_bytes_remaining; int total_number_entry; int total_number_empty_entry; scalar_t__ entry_crc32; struct file* cur_file; int opt_compression_level; int opt_compression; int total_number_dir_entry; int total_bytes_entry_name; int * total_number_time_defined; int rbtree; int * sconv; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ AE_IFLNK ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int ARCHIVE_Z_RUN ;
 size_t ATIME ;
 int ATIME_IS_SET ;
 size_t CTIME ;
 int CTIME_IS_SET ;
 size_t MTIME ;
 int MTIME_IS_SET ;
 int _7z_compression_init_encoder (struct archive_write*,int ,int ) ;
 int __archive_rb_tree_insert_node (int *,struct archive_rb_node*) ;
 scalar_t__ archive_entry_filetype (struct archive_entry*) ;
 scalar_t__ archive_entry_symlink (struct archive_entry*) ;
 int * archive_string_conversion_to_charset (int *,char*,int) ;
 scalar_t__ compress_out (struct archive_write*,void const*,size_t,int ) ;
 scalar_t__ crc32 (scalar_t__,void const*,unsigned int) ;
 int file_free (struct file*) ;
 int file_new (struct archive_write*,struct archive_entry*,struct file**) ;
 int file_register (struct _7zip*,struct file*) ;
 int file_register_empty (struct _7zip*,struct file*) ;

__attribute__((used)) static int
_7z_write_header(struct archive_write *a, struct archive_entry *entry)
{
 struct _7zip *zip;
 struct file *file;
 int r;

 zip = (struct _7zip *)a->format_data;
 zip->cur_file = ((void*)0);
 zip->entry_bytes_remaining = 0;

 if (zip->sconv == ((void*)0)) {
  zip->sconv = archive_string_conversion_to_charset(
      &a->archive, "UTF-16LE", 1);
  if (zip->sconv == ((void*)0))
   return (ARCHIVE_FATAL);
 }

 r = file_new(a, entry, &file);
 if (r < ARCHIVE_WARN) {
  if (file != ((void*)0))
   file_free(file);
  return (r);
 }
 if (file->size == 0 && file->dir) {
  if (!__archive_rb_tree_insert_node(&(zip->rbtree),
      (struct archive_rb_node *)file)) {

   file_free(file);
   return (ARCHIVE_OK);
  }
 }

 if (file->flg & MTIME_IS_SET)
  zip->total_number_time_defined[MTIME]++;
 if (file->flg & CTIME_IS_SET)
  zip->total_number_time_defined[CTIME]++;
 if (file->flg & ATIME_IS_SET)
  zip->total_number_time_defined[ATIME]++;

 zip->total_number_entry++;
 zip->total_bytes_entry_name += file->name_len + 2;
 if (file->size == 0) {

  zip->total_number_empty_entry++;
  if (file->dir)
   zip->total_number_dir_entry++;
  else
   file_register_empty(zip, file);
  return (r);
 }




 if ((zip->total_number_entry - zip->total_number_empty_entry) == 1) {
  r = _7z_compression_init_encoder(a, zip->opt_compression,
   zip->opt_compression_level);
  if (r < 0) {
   file_free(file);
   return (ARCHIVE_FATAL);
  }
 }


 file_register(zip, file);




 zip->cur_file = file;



 zip->entry_bytes_remaining = file->size;
 zip->entry_crc32 = 0;




 if (archive_entry_filetype(entry) == AE_IFLNK) {
  ssize_t bytes;
  const void *p = (const void *)archive_entry_symlink(entry);
  bytes = compress_out(a, p, (size_t)file->size, ARCHIVE_Z_RUN);
  if (bytes < 0)
   return ((int)bytes);
  zip->entry_crc32 = crc32(zip->entry_crc32, p, (unsigned)bytes);
  zip->entry_bytes_remaining -= bytes;
 }

 return (r);
}
