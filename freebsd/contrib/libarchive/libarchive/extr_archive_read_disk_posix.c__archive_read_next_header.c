
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_disk {struct archive_entry* entry; } ;
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int _archive_read_next_header2 (struct archive*,struct archive_entry*) ;

__attribute__((used)) static int
_archive_read_next_header(struct archive *_a, struct archive_entry **entryp)
{
 int ret;
 struct archive_read_disk *a = (struct archive_read_disk *)_a;
 *entryp = ((void*)0);
 ret = _archive_read_next_header2(_a, a->entry);
 *entryp = a->entry;
 return ret;
}
