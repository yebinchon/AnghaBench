
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
rpm_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *b;
 ssize_t avail;
 int bits_checked;

 (void)self;

 b = __archive_read_filter_ahead(filter, 8, &avail);
 if (b == ((void*)0))
  return (0);

 bits_checked = 0;



 if (memcmp(b, "\xED\xAB\xEE\xDB", 4) != 0)
  return (0);
 bits_checked += 32;



 if (b[4] != 3 && b[4] != 4)
  return (0);
 bits_checked += 8;



 if (b[6] != 0)
  return (0);
 bits_checked += 8;
 if (b[7] != 0 && b[7] != 1)
  return (0);
 bits_checked += 8;

 return (bits_checked);
}
