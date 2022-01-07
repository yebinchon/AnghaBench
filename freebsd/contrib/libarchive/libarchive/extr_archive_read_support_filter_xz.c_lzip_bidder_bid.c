
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;


 int lzip_has_member (struct archive_read_filter*) ;

__attribute__((used)) static int
lzip_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{

 (void)self;
 return (lzip_has_member(filter));
}
