
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 void* __archive_read_ahead (struct archive_read*,int,int*) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_set_error (int *,int ,char*,int) ;
 scalar_t__ is_hex (char const*,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int newc_header_size ;

__attribute__((used)) static int
find_newc_header(struct archive_read *a)
{
 const void *h;
 const char *p, *q;
 size_t skip, skipped = 0;
 ssize_t bytes;

 for (;;) {
  h = __archive_read_ahead(a, newc_header_size, &bytes);
  if (h == ((void*)0))
   return (ARCHIVE_FATAL);
  p = h;
  q = p + bytes;


  if (memcmp("07070", p, 5) == 0
      && (p[5] == '1' || p[5] == '2')
      && is_hex(p, newc_header_size))
   return (ARCHIVE_OK);





  while (p + newc_header_size <= q) {
   switch (p[5]) {
   case '1':
   case '2':
    if (memcmp("07070", p, 5) == 0
        && is_hex(p, newc_header_size)) {
     skip = p - (const char *)h;
     __archive_read_consume(a, skip);
     skipped += skip;
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
