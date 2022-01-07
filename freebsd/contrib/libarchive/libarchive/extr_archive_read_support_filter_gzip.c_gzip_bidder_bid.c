
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;


 scalar_t__ peek_at_header (struct archive_read_filter*,int*,int *) ;

__attribute__((used)) static int
gzip_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 int bits_checked;

 (void)self;

 if (peek_at_header(filter, &bits_checked, ((void*)0)))
  return (bits_checked);
 return (0);
}
