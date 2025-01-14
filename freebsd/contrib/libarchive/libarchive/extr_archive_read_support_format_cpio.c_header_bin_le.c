
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {int entry_bytes_remaining; int entry_padding; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_CPIO_BIN_LE ;
 int ARCHIVE_OK ;
 void* __archive_read_ahead (struct archive_read*,int ,int *) ;
 int __archive_read_consume (struct archive_read*,int ) ;
 int archive_entry_set_dev (struct archive_entry*,unsigned char const) ;
 int archive_entry_set_gid (struct archive_entry*,unsigned char const) ;
 int archive_entry_set_ino (struct archive_entry*,unsigned char const) ;
 int archive_entry_set_mode (struct archive_entry*,unsigned char const) ;
 int archive_entry_set_mtime (struct archive_entry*,int,int ) ;
 int archive_entry_set_nlink (struct archive_entry*,unsigned char const) ;
 int archive_entry_set_rdev (struct archive_entry*,unsigned char const) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_set_uid (struct archive_entry*,unsigned char const) ;
 int archive_set_error (TYPE_1__*,int ,char*) ;
 size_t bin_dev_offset ;
 int bin_filesize_offset ;
 size_t bin_gid_offset ;
 int bin_header_size ;
 size_t bin_ino_offset ;
 size_t bin_mode_offset ;
 int bin_mtime_offset ;
 size_t bin_namesize_offset ;
 size_t bin_nlink_offset ;
 size_t bin_rdev_offset ;
 size_t bin_uid_offset ;
 int le4 (unsigned char const*) ;

__attribute__((used)) static int
header_bin_le(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
 const void *h;
 const unsigned char *header;

 a->archive.archive_format = ARCHIVE_FORMAT_CPIO_BIN_LE;
 a->archive.archive_format_name = "cpio (little-endian binary)";


 h = __archive_read_ahead(a, bin_header_size, ((void*)0));
 if (h == ((void*)0)) {
     archive_set_error(&a->archive, 0,
  "End of file trying to read next cpio header");
     return (ARCHIVE_FATAL);
 }


 header = (const unsigned char *)h;

 archive_entry_set_dev(entry, header[bin_dev_offset] + header[bin_dev_offset + 1] * 256);
 archive_entry_set_ino(entry, header[bin_ino_offset] + header[bin_ino_offset + 1] * 256);
 archive_entry_set_mode(entry, header[bin_mode_offset] + header[bin_mode_offset + 1] * 256);
 archive_entry_set_uid(entry, header[bin_uid_offset] + header[bin_uid_offset + 1] * 256);
 archive_entry_set_gid(entry, header[bin_gid_offset] + header[bin_gid_offset + 1] * 256);
 archive_entry_set_nlink(entry, header[bin_nlink_offset] + header[bin_nlink_offset + 1] * 256);
 archive_entry_set_rdev(entry, header[bin_rdev_offset] + header[bin_rdev_offset + 1] * 256);
 archive_entry_set_mtime(entry, le4(header + bin_mtime_offset), 0);
 *namelength = header[bin_namesize_offset] + header[bin_namesize_offset + 1] * 256;
 *name_pad = *namelength & 1;

 cpio->entry_bytes_remaining = le4(header + bin_filesize_offset);
 archive_entry_set_size(entry, cpio->entry_bytes_remaining);
 cpio->entry_padding = cpio->entry_bytes_remaining & 1;
 __archive_read_consume(a, bin_header_size);
 return (ARCHIVE_OK);
}
