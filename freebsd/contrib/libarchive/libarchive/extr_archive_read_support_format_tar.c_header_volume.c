
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int dummy; } ;
struct archive_read {int dummy; } ;
struct archive_entry {int dummy; } ;


 int tar_read_header (struct archive_read*,struct tar*,struct archive_entry*,size_t*) ;

__attribute__((used)) static int
header_volume(struct archive_read *a, struct tar *tar,
    struct archive_entry *entry, const void *h, size_t *unconsumed)
{
 (void)h;


 return (tar_read_header(a, tar, entry, unconsumed));
}
