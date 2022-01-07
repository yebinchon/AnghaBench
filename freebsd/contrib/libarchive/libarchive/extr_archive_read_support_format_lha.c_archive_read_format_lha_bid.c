
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 int H_SIZE ;
 void* __archive_read_ahead (struct archive_read*,int,int*) ;
 size_t lha_check_header_format (char const*) ;

__attribute__((used)) static int
archive_read_format_lha_bid(struct archive_read *a, int best_bid)
{
 const char *p;
 const void *buff;
 ssize_t bytes_avail, offset, window;
 size_t next;



 if (best_bid > 30)
  return (-1);

 if ((p = __archive_read_ahead(a, H_SIZE, ((void*)0))) == ((void*)0))
  return (-1);

 if (lha_check_header_format(p) == 0)
  return (30);

 if (p[0] == 'M' && p[1] == 'Z') {

  offset = 0;
  window = 4096;
  while (offset < (1024 * 20)) {
   buff = __archive_read_ahead(a, offset + window,
       &bytes_avail);
   if (buff == ((void*)0)) {

    window >>= 1;
    if (window < (H_SIZE + 3))
     return (0);
    continue;
   }
   p = (const char *)buff + offset;
   while (p + H_SIZE < (const char *)buff + bytes_avail) {
    if ((next = lha_check_header_format(p)) == 0)
     return (30);
    p += next;
   }
   offset = p - (const char *)buff;
  }
 }
 return (0);
}
