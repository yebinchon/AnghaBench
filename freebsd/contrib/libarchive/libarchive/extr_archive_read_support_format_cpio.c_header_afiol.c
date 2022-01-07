
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {scalar_t__ entry_padding; scalar_t__ entry_bytes_remaining; } ;
struct TYPE_2__ {char* archive_format_name; int archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
struct archive_entry {int dummy; } ;
typedef int mode_t ;
typedef int dev_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_FORMAT_CPIO_AFIO_LARGE ;
 int ARCHIVE_OK ;
 void* __archive_read_ahead (struct archive_read*,int ,int *) ;
 int __archive_read_consume (struct archive_read*,int ) ;
 int afiol_dev_offset ;
 int afiol_dev_size ;
 int afiol_filesize_offset ;
 int afiol_filesize_size ;
 int afiol_gid_offset ;
 int afiol_gid_size ;
 int afiol_header_size ;
 int afiol_ino_offset ;
 int afiol_ino_size ;
 int afiol_mode_offset ;
 int afiol_mode_size ;
 int afiol_mtime_offset ;
 int afiol_mtime_size ;
 int afiol_namesize_offset ;
 int afiol_namesize_size ;
 int afiol_nlink_offset ;
 int afiol_nlink_size ;
 int afiol_rdev_offset ;
 int afiol_rdev_size ;
 int afiol_uid_offset ;
 int afiol_uid_size ;
 int archive_entry_set_dev (struct archive_entry*,int ) ;
 int archive_entry_set_gid (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_ino (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_mode (struct archive_entry*,int ) ;
 int archive_entry_set_mtime (struct archive_entry*,scalar_t__,int ) ;
 int archive_entry_set_nlink (struct archive_entry*,unsigned int) ;
 int archive_entry_set_rdev (struct archive_entry*,int ) ;
 int archive_entry_set_size (struct archive_entry*,scalar_t__) ;
 int archive_entry_set_uid (struct archive_entry*,scalar_t__) ;
 scalar_t__ atol16 (char const*,int ) ;
 scalar_t__ atol8 (char const*,int ) ;

__attribute__((used)) static int
header_afiol(struct archive_read *a, struct cpio *cpio,
    struct archive_entry *entry, size_t *namelength, size_t *name_pad)
{
 const void *h;
 const char *header;

 a->archive.archive_format = ARCHIVE_FORMAT_CPIO_AFIO_LARGE;
 a->archive.archive_format_name = "afio large ASCII";


 h = __archive_read_ahead(a, afiol_header_size, ((void*)0));
 if (h == ((void*)0))
     return (ARCHIVE_FATAL);


 header = (const char *)h;

 archive_entry_set_dev(entry,
  (dev_t)atol16(header + afiol_dev_offset, afiol_dev_size));
 archive_entry_set_ino(entry, atol16(header + afiol_ino_offset, afiol_ino_size));
 archive_entry_set_mode(entry,
  (mode_t)atol8(header + afiol_mode_offset, afiol_mode_size));
 archive_entry_set_uid(entry, atol16(header + afiol_uid_offset, afiol_uid_size));
 archive_entry_set_gid(entry, atol16(header + afiol_gid_offset, afiol_gid_size));
 archive_entry_set_nlink(entry,
  (unsigned int)atol16(header + afiol_nlink_offset, afiol_nlink_size));
 archive_entry_set_rdev(entry,
  (dev_t)atol16(header + afiol_rdev_offset, afiol_rdev_size));
 archive_entry_set_mtime(entry, atol16(header + afiol_mtime_offset, afiol_mtime_size), 0);
 *namelength = (size_t)atol16(header + afiol_namesize_offset, afiol_namesize_size);
 *name_pad = 0;

 cpio->entry_bytes_remaining =
     atol16(header + afiol_filesize_offset, afiol_filesize_size);
 archive_entry_set_size(entry, cpio->entry_bytes_remaining);
 cpio->entry_padding = 0;
 __archive_read_consume(a, afiol_header_size);
 return (ARCHIVE_OK);
}
