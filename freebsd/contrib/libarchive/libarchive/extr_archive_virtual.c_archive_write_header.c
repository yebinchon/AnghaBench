
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_entry {int dummy; } ;
struct archive {TYPE_1__* vtable; int file_count; } ;
struct TYPE_2__ {int (* archive_write_header ) (struct archive*,struct archive_entry*) ;} ;


 int stub1 (struct archive*,struct archive_entry*) ;

int
archive_write_header(struct archive *a, struct archive_entry *entry)
{
 ++a->file_count;
 return ((a->vtable->archive_write_header)(a, entry));
}
