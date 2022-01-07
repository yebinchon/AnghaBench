
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
xz_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;

 (void)self;

 buffer = __archive_read_filter_ahead(filter, 6, &avail);
 if (buffer == ((void*)0))
  return (0);




 if (memcmp(buffer, "\xFD\x37\x7A\x58\x5A\x00", 6) != 0)
  return (0);

 return (48);
}
