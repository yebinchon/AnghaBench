
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
typedef int ssize_t ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 int __archive_read_consume (struct archive_read*,size_t) ;
 int archive_set_error (int *,int ,char*) ;
 int find_cab_magic (char const*) ;

__attribute__((used)) static int
cab_skip_sfx(struct archive_read *a)
{
 const char *p, *q;
 size_t skip;
 ssize_t bytes, window;

 window = 4096;
 for (;;) {
  const char *h = __archive_read_ahead(a, window, &bytes);
  if (h == ((void*)0)) {

   window >>= 1;
   if (window < 128) {
    archive_set_error(&a->archive,
        ARCHIVE_ERRNO_FILE_FORMAT,
        "Couldn't find out CAB header");
    return (ARCHIVE_FATAL);
   }
   continue;
  }
  p = h;
  q = p + bytes;





  while (p + 8 < q) {
   int next;
   if ((next = find_cab_magic(p)) == 0) {
    skip = p - h;
    __archive_read_consume(a, skip);
    return (ARCHIVE_OK);
   }
   p += next;
  }
  skip = p - h;
  __archive_read_consume(a, skip);
 }
}
