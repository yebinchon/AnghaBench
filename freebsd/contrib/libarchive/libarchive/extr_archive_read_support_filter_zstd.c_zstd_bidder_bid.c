
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef int ssize_t ;


 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,int *) ;
 unsigned int archive_le32dec (unsigned char const*) ;

__attribute__((used)) static int
zstd_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;
 unsigned prefix;


 const unsigned zstd_magic = 0xFD2FB528U;

 (void) self;

 buffer = __archive_read_filter_ahead(filter, 4, &avail);
 if (buffer == ((void*)0))
  return (0);

 prefix = archive_le32dec(buffer);
 if (prefix == zstd_magic)
  return (32);

 return (0);
}
