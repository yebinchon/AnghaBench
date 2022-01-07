
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
typedef size_t ssize_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int RAR_SIGNATURE ;
 void* __archive_read_ahead (struct archive_read*,size_t,size_t*) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_set_error (int *,int ,char*) ;
 scalar_t__ memcmp (char const*,int ,int) ;

__attribute__((used)) static int
skip_sfx(struct archive_read *a)
{
  const void *h;
  const char *p, *q;
  size_t skip, total;
  ssize_t bytes, window;

  total = 0;
  window = 4096;
  while (total + window <= (1024 * 128)) {
    h = __archive_read_ahead(a, window, &bytes);
    if (h == ((void*)0)) {

      window >>= 1;
      if (window < 0x40)
       goto fatal;
      continue;
    }
    if (bytes < 0x40)
      goto fatal;
    p = h;
    q = p + bytes;





    while (p + 7 < q) {
      if (memcmp(p, RAR_SIGNATURE, 7) == 0) {
       skip = p - (const char *)h;
       __archive_read_consume(a, skip);
       return (ARCHIVE_OK);
      }
      p += 0x10;
    }
    skip = p - (const char *)h;
    __archive_read_consume(a, skip);
 total += skip;
  }
fatal:
  archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
      "Couldn't find out RAR header");
  return (ARCHIVE_FATAL);
}
