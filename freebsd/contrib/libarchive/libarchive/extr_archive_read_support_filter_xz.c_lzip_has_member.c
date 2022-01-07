
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter {int dummy; } ;
typedef int ssize_t ;


 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,int *) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;

__attribute__((used)) static int
lzip_has_member(struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;
 int bits_checked;
 int log2dic;

 buffer = __archive_read_filter_ahead(filter, 6, &avail);
 if (buffer == ((void*)0))
  return (0);




 bits_checked = 0;
 if (memcmp(buffer, "LZIP", 4) != 0)
  return (0);
 bits_checked += 32;


 if (buffer[4] != 0 && buffer[4] != 1)
  return (0);
 bits_checked += 8;


 log2dic = buffer[5] & 0x1f;
 if (log2dic < 12 || log2dic > 27)
  return (0);
 bits_checked += 8;

 return (bits_checked);
}
