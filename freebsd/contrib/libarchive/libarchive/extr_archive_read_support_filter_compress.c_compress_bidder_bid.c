
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef int ssize_t ;


 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,int *) ;

__attribute__((used)) static int
compress_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;
 int bits_checked;

 (void)self;


 buffer = __archive_read_filter_ahead(filter, 3, &avail);

 if (buffer == ((void*)0))
  return (0);

 bits_checked = 0;

 if (buffer[0] != 0x1F || buffer[1] != 0x9D)
  return (0);

 if (buffer[2] & 0x20)
  return (0);
 if (buffer[2] & 0x40)
  return (0);
 bits_checked += 18;

 return (bits_checked);
}
