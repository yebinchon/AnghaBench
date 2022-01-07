
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 int find_cab_magic (char const*) ;
 scalar_t__ memcmp (char const*,char*,int) ;

__attribute__((used)) static int
archive_read_format_cab_bid(struct archive_read *a, int best_bid)
{
 const char *p;
 ssize_t bytes_avail, offset, window;



 if (best_bid > 64)
  return (-1);

 if ((p = __archive_read_ahead(a, 8, ((void*)0))) == ((void*)0))
  return (-1);

 if (memcmp(p, "MSCF\0\0\0\0", 8) == 0)
  return (64);






 if (p[0] == 'M' && p[1] == 'Z') {
  offset = 0;
  window = 4096;
  while (offset < (1024 * 128)) {
   const char *h = __archive_read_ahead(a, offset + window,
       &bytes_avail);
   if (h == ((void*)0)) {

    window >>= 1;
    if (window < 128)
     return (0);
    continue;
   }
   p = h + offset;
   while (p + 8 < h + bytes_avail) {
    int next;
    if ((next = find_cab_magic(p)) == 0)
     return (64);
    p += next;
   }
   offset = p - h;
  }
 }
 return (0);
}
