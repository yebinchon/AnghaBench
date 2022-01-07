
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {int entry_bytes_remaining; int entry_padding; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
typedef int mode_t ;
typedef int dev_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_CPIO_SVR4_CRC ;
 int ARCHIVE_FORMAT_CPIO_SVR4_NOCRC ;
 int ARCHIVE_WARN ;
 size_t SIZE_MAX ;
 void* __archive_read_ahead (struct archive_read*,int ,int *) ;
 int __archive_read_consume (struct archive_read*,int ) ;
 int archive_entry_set_devmajor (struct archive_entry*,int ) ;
 int archive_entry_set_devminor (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,int) ;
 int archive_entry_set_ino (struct archive_entry*,int) ;
 int archive_entry_set_mode (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int ) ;
 int archive_entry_set_nlink (struct archive_entry*,unsigned int) ;
 int archive_entry_set_rdevmajor (struct archive_entry*,int ) ;
 int archive_entry_set_rdevminor (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_set_uid (struct archive_entry*,int) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 int atol16 (char const*,int ) ;
 int find_newc_header (struct archive_read*) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int newc_devmajor_offset ;
 int newc_devmajor_size ;
 int newc_devminor_offset ;
 int newc_devminor_size ;
 int newc_filesize_offset ;
 int newc_filesize_size ;
 int newc_gid_offset ;
 int newc_gid_size ;
 int newc_header_size ;
 int newc_ino_offset ;
 int newc_ino_size ;
 int newc_magic_offset ;
 int newc_mode_offset ;
 int newc_mode_size ;
 int newc_mtime_offset ;
 int newc_mtime_size ;
 int newc_namesize_offset ;
 int newc_namesize_size ;
 int newc_nlink_offset ;
 int newc_nlink_size ;
 int newc_rdevmajor_offset ;
 int newc_rdevmajor_size ;
 int newc_rdevminor_offset ;
 int newc_rdevminor_size ;
 int newc_uid_offset ;
 int newc_uid_size ;

__attribute__((used)) static int
header_newc(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
 const void *h;
 const char *header;
 int r;

 r = find_newc_header(a);
 if (r < ARCHIVE_WARN)
  return (r);


 h = __archive_read_ahead(a, newc_header_size, ((void*)0));
 if (h == ((void*)0))
     return (ARCHIVE_FATAL);


 header = (const char *)h;

 if (memcmp(header + newc_magic_offset, "070701", 6) == 0) {
  a->archive.archive_format = ARCHIVE_FORMAT_CPIO_SVR4_NOCRC;
  a->archive.archive_format_name = "ASCII cpio (SVR4 with no CRC)";
 } else if (memcmp(header + newc_magic_offset, "070702", 6) == 0) {
  a->archive.archive_format = ARCHIVE_FORMAT_CPIO_SVR4_CRC;
  a->archive.archive_format_name = "ASCII cpio (SVR4 with CRC)";
 } else {

 }

 archive_entry_set_devmajor(entry,
  (dev_t)atol16(header + newc_devmajor_offset, newc_devmajor_size));
 archive_entry_set_devminor(entry,
  (dev_t)atol16(header + newc_devminor_offset, newc_devminor_size));
 archive_entry_set_ino(entry, atol16(header + newc_ino_offset, newc_ino_size));
 archive_entry_set_mode(entry,
  (mode_t)atol16(header + newc_mode_offset, newc_mode_size));
 archive_entry_set_uid(entry, atol16(header + newc_uid_offset, newc_uid_size));
 archive_entry_set_gid(entry, atol16(header + newc_gid_offset, newc_gid_size));
 archive_entry_set_nlink(entry,
  (unsigned int)atol16(header + newc_nlink_offset, newc_nlink_size));
 archive_entry_set_rdevmajor(entry,
  (dev_t)atol16(header + newc_rdevmajor_offset, newc_rdevmajor_size));
 archive_entry_set_rdevminor(entry,
  (dev_t)atol16(header + newc_rdevminor_offset, newc_rdevminor_size));
 archive_entry_set_mtime(entry, atol16(header + newc_mtime_offset, newc_mtime_size), 0);
 *namelength = (size_t)atol16(header + newc_namesize_offset, newc_namesize_size);

 *name_pad = (2 - *namelength) & 3;


 if (*name_pad > SIZE_MAX - *namelength) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "cpio archive has invalid namelength");
  return (ARCHIVE_FATAL);
 }






 cpio->entry_bytes_remaining =
     atol16(header + newc_filesize_offset, newc_filesize_size);
 archive_entry_set_size(entry, cpio->entry_bytes_remaining);

 cpio->entry_padding = 3 & -cpio->entry_bytes_remaining;
 __archive_read_consume(a, newc_header_size);
 return (r);
}
