
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct archive {int dummy; } ;
struct TYPE_2__ {int (* format_capabilties ) (struct archive_read*) ;} ;


 int ARCHIVE_READ_FORMAT_CAPS_NONE ;
 int stub1 (struct archive_read*) ;

int
archive_read_format_capabilities(struct archive *_a)
{
 struct archive_read *a = (struct archive_read *)_a;
 if (a && a->format && a->format->format_capabilties) {
  return (a->format->format_capabilties)(a);
 }
 return ARCHIVE_READ_FORMAT_CAPS_NONE;
}
