
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {char* buff; size_t buff_size; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_read_data_block (struct archive*,void const**,size_t*,scalar_t__*) ;
 scalar_t__ archive_write_data (struct archive*,void const*,size_t) ;
 int lafe_warnc (int ,char*,int ) ;
 int memset (char*,int ,size_t) ;
 scalar_t__ need_report () ;
 int report_write (struct bsdtar*,struct archive*,struct archive_entry*,scalar_t__) ;

__attribute__((used)) static int
copy_file_data_block(struct bsdtar *bsdtar, struct archive *a,
    struct archive *in_a, struct archive_entry *entry)
{
 size_t bytes_read;
 ssize_t bytes_written;
 int64_t offset, progress = 0;
 char *null_buff = ((void*)0);
 const void *buff;
 int r;

 while ((r = archive_read_data_block(in_a, &buff,
     &bytes_read, &offset)) == ARCHIVE_OK) {
  if (need_report())
   report_write(bsdtar, a, entry, progress);

  if (offset > progress) {
   int64_t sparse = offset - progress;
   size_t ns;

   if (null_buff == ((void*)0)) {
    null_buff = bsdtar->buff;
    memset(null_buff, 0, bsdtar->buff_size);
   }

   while (sparse > 0) {
    if (sparse > (int64_t)bsdtar->buff_size)
     ns = bsdtar->buff_size;
    else
     ns = (size_t)sparse;
    bytes_written =
        archive_write_data(a, null_buff, ns);
    if (bytes_written < 0) {

     lafe_warnc(0, "%s",
          archive_error_string(a));
     return (-1);
    }
    if ((size_t)bytes_written < ns) {


     lafe_warnc(0,
         "%s: Truncated write; file may "
         "have grown while being archived.",
         archive_entry_pathname(entry));
     return (0);
    }
    progress += bytes_written;
    sparse -= bytes_written;
   }
  }

  bytes_written = archive_write_data(a, buff, bytes_read);
  if (bytes_written < 0) {

   lafe_warnc(0, "%s", archive_error_string(a));
   return (-1);
  }
  if ((size_t)bytes_written < bytes_read) {

   lafe_warnc(0,
       "%s: Truncated write; file may have grown "
       "while being archived.",
       archive_entry_pathname(entry));
   return (0);
  }
  progress += bytes_written;
 }
 if (r < ARCHIVE_WARN) {
  lafe_warnc(archive_errno(a), "%s", archive_error_string(a));
  return (-1);
 }
 return (0);
}
