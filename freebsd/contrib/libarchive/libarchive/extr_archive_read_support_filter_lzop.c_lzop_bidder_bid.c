
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int LZOP_HEADER_MAGIC ;
 int LZOP_HEADER_MAGIC_LEN ;
 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,scalar_t__*) ;
 scalar_t__ memcmp (unsigned char const*,int ,int) ;

__attribute__((used)) static int
lzop_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *p;
 ssize_t avail;

 (void)self;

 p = __archive_read_filter_ahead(filter, LZOP_HEADER_MAGIC_LEN, &avail);
 if (p == ((void*)0) || avail == 0)
  return (0);

 if (memcmp(p, LZOP_HEADER_MAGIC, LZOP_HEADER_MAGIC_LEN))
  return (0);

 return (LZOP_HEADER_MAGIC_LEN * 8);
}
