
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* filter; } ;
struct archive_entry {int dummy; } ;
struct TYPE_2__ {int (* read_header ) (TYPE_1__*,struct archive_entry*) ;} ;


 int ARCHIVE_OK ;
 int stub1 (TYPE_1__*,struct archive_entry*) ;

int
__archive_read_header(struct archive_read *a, struct archive_entry *entry)
{
 if (a->filter->read_header)
  return a->filter->read_header(a->filter, entry);
 else
  return (ARCHIVE_OK);
}
