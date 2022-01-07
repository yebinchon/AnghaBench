
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int archive_format; } ;
struct archive_read {TYPE_1__ archive; TYPE_2__* format; } ;
struct archive_entry {int dummy; } ;
struct ar {int read_global_header; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ARCHIVE_EOF ;
 int ARCHIVE_FORMAT_AR ;
 void* __archive_read_ahead (struct archive_read*,int,int *) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int _ar_read_header (struct archive_read*,struct archive_entry*,struct ar*,char const*,size_t*) ;

__attribute__((used)) static int
archive_read_format_ar_read_header(struct archive_read *a,
    struct archive_entry *entry)
{
 struct ar *ar = (struct ar*)(a->format->data);
 size_t unconsumed;
 const void *header_data;
 int ret;

 if (!ar->read_global_header) {




  __archive_read_consume(a, 8);
  ar->read_global_header = 1;

  a->archive.archive_format = ARCHIVE_FORMAT_AR;
 }


 if ((header_data = __archive_read_ahead(a, 60, ((void*)0))) == ((void*)0))

  return (ARCHIVE_EOF);

 unconsumed = 60;

 ret = _ar_read_header(a, entry, ar, (const char *)header_data, &unconsumed);

 if (unconsumed)
  __archive_read_consume(a, unconsumed);

 return ret;
}
