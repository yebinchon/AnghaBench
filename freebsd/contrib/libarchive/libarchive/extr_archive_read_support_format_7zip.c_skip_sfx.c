
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {int archive; TYPE_1__* format; } ;
struct _7zip {scalar_t__ seek_base; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int SEEK_SET ;
 scalar_t__ SFX_MAX_ADDR ;
 scalar_t__ SFX_MIN_ADDR ;
 void* __archive_read_ahead (struct archive_read*,scalar_t__,scalar_t__*) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 scalar_t__ __archive_read_seek (struct archive_read*,scalar_t__,int ) ;
 int archive_set_error (int *,int ,char*) ;
 int check_7zip_header_in_sfx (char const*) ;

__attribute__((used)) static int
skip_sfx(struct archive_read *a, ssize_t bytes_avail)
{
 const void *h;
 const char *p, *q;
 size_t skip, offset;
 ssize_t bytes, window;






 if (bytes_avail > SFX_MIN_ADDR)
  __archive_read_consume(a, SFX_MIN_ADDR);
 else if (__archive_read_seek(a, SFX_MIN_ADDR, SEEK_SET) < 0)
  return (ARCHIVE_FATAL);

 offset = 0;
 window = 1;
 while (offset + window <= SFX_MAX_ADDR - SFX_MIN_ADDR) {
  h = __archive_read_ahead(a, window, &bytes);
  if (h == ((void*)0)) {

   window >>= 1;
   if (window < 0x40)
    goto fatal;
   continue;
  }
  if (bytes < 6) {

   window = 4096;
   continue;
  }
  p = (const char *)h;
  q = p + bytes;





  while (p + 32 < q) {
   int step = check_7zip_header_in_sfx(p);
   if (step == 0) {
    struct _7zip *zip =
        (struct _7zip *)a->format->data;
    skip = p - (const char *)h;
    __archive_read_consume(a, skip);
    zip->seek_base = SFX_MIN_ADDR + offset + skip;
    return (ARCHIVE_OK);
   }
   p += step;
  }
  skip = p - (const char *)h;
  __archive_read_consume(a, skip);
  offset += skip;
  if (window == 1)
   window = 4096;
 }
fatal:
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "Couldn't find out 7-Zip header");
 return (ARCHIVE_FATAL);
}
