
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_entry {int dummy; } ;
struct archive {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* archive_read_next_header2 ) (struct archive*,struct archive_entry*) ;} ;


 int stub1 (struct archive*,struct archive_entry*) ;

int
archive_read_next_header2(struct archive *a, struct archive_entry *entry)
{
 return ((a->vtable->archive_read_next_header2)(a, entry));
}
