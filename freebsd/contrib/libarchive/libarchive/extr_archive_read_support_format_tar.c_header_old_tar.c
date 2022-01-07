
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int entry_padding; int entry_bytes_remaining; int sconv; } ;
struct archive_read {int dummy; } ;
struct archive_entry_header_ustar {int name; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 scalar_t__ archive_entry_copy_pathname_l (struct archive_entry*,int ,int,int ) ;
 int header_common (struct archive_read*,struct tar*,struct archive_entry*,void const*) ;
 int set_conversion_failed_error (struct archive_read*,int ,char*) ;

__attribute__((used)) static int
header_old_tar(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h)
{
 const struct archive_entry_header_ustar *header;
 int err = ARCHIVE_OK, err2;


 header = (const struct archive_entry_header_ustar *)h;
 if (archive_entry_copy_pathname_l(entry,
     header->name, sizeof(header->name), tar->sconv) != 0) {
  err = set_conversion_failed_error(a, tar->sconv, "Pathname");
  if (err == ARCHIVE_FATAL)
   return (err);
 }


 err2 = header_common(a, tar, entry, h);
 if (err > err2)
  err = err2;

 tar->entry_padding = 0x1ff & (-tar->entry_bytes_remaining);
 return (err);
}
