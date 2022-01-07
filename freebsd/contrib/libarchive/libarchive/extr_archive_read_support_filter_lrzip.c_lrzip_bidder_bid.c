
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int LRZIP_HEADER_MAGIC ;
 size_t LRZIP_HEADER_MAGIC_LEN ;
 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,scalar_t__,scalar_t__*) ;
 scalar_t__ memcmp (unsigned char const*,int ,size_t) ;

__attribute__((used)) static int
lrzip_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *p;
 ssize_t avail, len;
 int i;

 (void)self;


 len = 6;
 p = __archive_read_filter_ahead(filter, len, &avail);
 if (p == ((void*)0) || avail == 0)
  return (0);

 if (memcmp(p, LRZIP_HEADER_MAGIC, LRZIP_HEADER_MAGIC_LEN))
  return (0);


 if (p[LRZIP_HEADER_MAGIC_LEN])
  return 0;

 i = p[LRZIP_HEADER_MAGIC_LEN + 1];
 if ((i < 6) || (i > 10))
  return 0;

 return (int)len;
}
