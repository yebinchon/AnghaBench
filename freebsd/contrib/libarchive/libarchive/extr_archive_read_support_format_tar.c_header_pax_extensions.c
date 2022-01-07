
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int entry_padding; int entry_bytes_remaining; int pax_header; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int err_combine (int,int) ;
 int pax_header (struct archive_read*,struct tar*,struct archive_entry*,int *) ;
 int read_body_to_string (struct archive_read*,struct tar*,int *,void const*,size_t*) ;
 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;

__attribute__((used)) static int
header_pax_extensions(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 int err, err2;

 err = read_body_to_string(a, tar, &(tar->pax_header), h, unconsumed);
 if (err != ARCHIVE_OK)
  return (err);


 err = tar_read_header(a, tar, entry, unconsumed);
 if ((err != ARCHIVE_OK) && (err != ARCHIVE_WARN))
  return (err);
 err2 = pax_header(a, tar, entry, &tar->pax_header);
 err = err_combine(err, err2);
 tar->entry_padding = 0x1ff & (-tar->entry_bytes_remaining);
 return (err);
}
