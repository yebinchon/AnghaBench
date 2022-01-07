
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef int ssize_t ;


 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,int *) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;

__attribute__((used)) static int
bzip2_reader_bid(struct archive_read_filter_bidder *self, struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;
 int bits_checked;

 (void)self;


 buffer = __archive_read_filter_ahead(filter, 14, &avail);
 if (buffer == ((void*)0))
  return (0);


 bits_checked = 0;
 if (memcmp(buffer, "BZh", 3) != 0)
  return (0);
 bits_checked += 24;


 if (buffer[3] < '1' || buffer[3] > '9')
  return (0);
 bits_checked += 5;




 if (memcmp(buffer + 4, "\x31\x41\x59\x26\x53\x59", 6) == 0)
  bits_checked += 48;
 else if (memcmp(buffer + 4, "\x17\x72\x45\x38\x50\x90", 6) == 0)
  bits_checked += 48;
 else
  return (0);

 return (bits_checked);
}
