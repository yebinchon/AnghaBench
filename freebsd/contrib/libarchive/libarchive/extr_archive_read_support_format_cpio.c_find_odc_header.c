
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* archive_format; } ;
struct archive_read {TYPE_1__ archive; } ;
typedef int ssize_t ;


 int ARCHIVE_FATAL ;
 void* ARCHIVE_FORMAT_CPIO_AFIO_LARGE ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 void* __archive_read_ahead (struct archive_read*,int,int*) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_set_error (TYPE_1__*,int ,char*,int) ;
 scalar_t__ is_afio_large (char const*,int) ;
 scalar_t__ is_octal (char const*,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int odc_header_size ;

__attribute__((used)) static int
find_odc_header(struct archive_read *a)
{
 const void *h;
 const char *p, *q;
 size_t skip, skipped = 0;
 ssize_t bytes;

 for (;;) {
  h = __archive_read_ahead(a, odc_header_size, &bytes);
  if (h == ((void*)0))
   return (ARCHIVE_FATAL);
  p = h;
  q = p + bytes;


  if (memcmp("070707", p, 6) == 0 && is_octal(p, odc_header_size))
   return (ARCHIVE_OK);
  if (memcmp("070727", p, 6) == 0 && is_afio_large(p, bytes)) {
   a->archive.archive_format = ARCHIVE_FORMAT_CPIO_AFIO_LARGE;
   return (ARCHIVE_OK);
  }





  while (p + odc_header_size <= q) {
   switch (p[5]) {
   case '7':
    if ((memcmp("070707", p, 6) == 0
        && is_octal(p, odc_header_size))
        || (memcmp("070727", p, 6) == 0
            && is_afio_large(p, q - p))) {
     skip = p - (const char *)h;
     __archive_read_consume(a, skip);
     skipped += skip;
     if (p[4] == '2')
      a->archive.archive_format =
          ARCHIVE_FORMAT_CPIO_AFIO_LARGE;
     if (skipped > 0) {
      archive_set_error(&a->archive,
          0,
          "Skipped %d bytes before "
          "finding valid header",
          (int)skipped);
      return (ARCHIVE_WARN);
     }
     return (ARCHIVE_OK);
    }
    p += 2;
    break;
   case '0':
    p++;
    break;
   default:
    p += 6;
    break;
   }
  }
  skip = p - (const char *)h;
  __archive_read_consume(a, skip);
  skipped += skip;
 }
}
