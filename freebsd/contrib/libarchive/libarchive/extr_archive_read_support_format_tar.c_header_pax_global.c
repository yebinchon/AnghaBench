
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int pax_global; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_OK ;
 int read_body_to_string (struct archive_read*,struct tar*,int *,void const*,size_t*) ;
 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;

__attribute__((used)) static int
header_pax_global(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 int err;

 err = read_body_to_string(a, tar, &(tar->pax_global), h, unconsumed);
 if (err != ARCHIVE_OK)
  return (err);
 err = tar_read_header(a, tar, entry, unconsumed);
 return (err);
}
