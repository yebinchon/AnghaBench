
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct tar {TYPE_1__ longlink; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_entry_copy_link (struct archive_entry*,int ) ;
 int read_body_to_string (struct archive_read*,struct tar*,TYPE_1__*,void const*,size_t*) ;
 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;

__attribute__((used)) static int
header_longlink(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 int err;

 err = read_body_to_string(a, tar, &(tar->longlink), h, unconsumed);
 if (err != ARCHIVE_OK)
  return (err);
 err = tar_read_header(a, tar, entry, unconsumed);
 if ((err != ARCHIVE_OK) && (err != ARCHIVE_WARN))
  return (err);

 archive_entry_copy_link(entry, tar->longlink.s);
 return (ARCHIVE_OK);
}
