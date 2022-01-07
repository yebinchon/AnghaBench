
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iso9660 {size_t bytes_remaining; TYPE_1__* cur_file; } ;
struct archive_write {struct iso9660* format_data; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int entry; } ;


 scalar_t__ AE_IFREG ;
 scalar_t__ archive_entry_filetype (int ) ;
 scalar_t__ write_iso9660_data (struct archive_write*,void const*,size_t) ;

__attribute__((used)) static ssize_t
iso9660_write_data(struct archive_write *a, const void *buff, size_t s)
{
 struct iso9660 *iso9660 = a->format_data;
 ssize_t r;

 if (iso9660->cur_file == ((void*)0))
  return (0);
 if (archive_entry_filetype(iso9660->cur_file->entry) != AE_IFREG)
  return (0);
 if (s > iso9660->bytes_remaining)
  s = (size_t)iso9660->bytes_remaining;
 if (s == 0)
  return (0);

 r = write_iso9660_data(a, buff, s);
 if (r > 0)
  iso9660->bytes_remaining -= r;
 return (r);
}
