
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 char* RAR_SIGNATURE ;
 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 scalar_t__ memcmp (char const*,char*,int) ;

__attribute__((used)) static int
archive_read_format_rar_bid(struct archive_read *a, int best_bid)
{
  const char *p;


  if (best_bid > 30)
   return (-1);

  if ((p = __archive_read_ahead(a, 7, ((void*)0))) == ((void*)0))
    return (-1);

  if (memcmp(p, RAR_SIGNATURE, 7) == 0)
    return (30);

  if ((p[0] == 'M' && p[1] == 'Z') || memcmp(p, "\x7F\x45LF", 4) == 0) {

    ssize_t offset = 0x10000;
    ssize_t window = 4096;
    ssize_t bytes_avail;
    while (offset + window <= (1024 * 128)) {
      const char *buff = __archive_read_ahead(a, offset + window, &bytes_avail);
      if (buff == ((void*)0)) {

        window >>= 1;
        if (window < 0x40)
          return (0);
        continue;
      }
      p = buff + offset;
      while (p + 7 < buff + bytes_avail) {
        if (memcmp(p, RAR_SIGNATURE, 7) == 0)
          return (30);
        p += 0x10;
      }
      offset = p - buff;
    }
  }
  return (0);
}
