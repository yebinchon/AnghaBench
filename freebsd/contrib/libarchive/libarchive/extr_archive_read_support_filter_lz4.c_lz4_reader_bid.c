
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ LZ4_LEGACY ;
 scalar_t__ LZ4_MAGICNUMBER ;
 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,int *) ;
 scalar_t__ archive_le32dec (unsigned char const*) ;

__attribute__((used)) static int
lz4_reader_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;
 int bits_checked;
 uint32_t number;

 (void)self;


 buffer = __archive_read_filter_ahead(filter, 11, &avail);
 if (buffer == ((void*)0))
  return (0);


 bits_checked = 0;
 if ((number = archive_le32dec(buffer)) == LZ4_MAGICNUMBER) {
  unsigned char flag, BD;

  bits_checked += 32;


  flag = buffer[4];

  if (((flag & 0xc0) >> 6) != 1)
   return (0);

  if (flag & 2)
   return (0);
  bits_checked += 8;
  BD = buffer[5];

  if (((BD & 0x70) >> 4) < 4)
   return (0);

  if (BD & ~0x70)
   return (0);
  bits_checked += 8;
 } else if (number == LZ4_LEGACY) {
  bits_checked += 32;
 }

 return (bits_checked);
}
