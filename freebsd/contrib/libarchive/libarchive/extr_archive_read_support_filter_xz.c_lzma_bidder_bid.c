
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct archive_read_filter_bidder {int dummy; } ;
struct archive_read_filter {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ARCHIVE_LITERAL_LL (int) ;
 unsigned char* __archive_read_filter_ahead (struct archive_read_filter*,int,int *) ;
 int archive_le32dec (unsigned char const*) ;
 scalar_t__ archive_le64dec (unsigned char const*) ;

__attribute__((used)) static int
lzma_bidder_bid(struct archive_read_filter_bidder *self,
    struct archive_read_filter *filter)
{
 const unsigned char *buffer;
 ssize_t avail;
 uint32_t dicsize;
 uint64_t uncompressed_size;
 int bits_checked;

 (void)self;

 buffer = __archive_read_filter_ahead(filter, 14, &avail);
 if (buffer == ((void*)0))
  return (0);
 bits_checked = 0;
 if (buffer[0] > (4 * 5 + 4) * 9 + 8)
  return (0);

 if (buffer[0] == 0x5d || buffer[0] == 0x5e)
  bits_checked += 8;





 uncompressed_size = archive_le64dec(buffer+5);
 if (uncompressed_size == (uint64_t)ARCHIVE_LITERAL_LL(-1))
  bits_checked += 64;
 dicsize = archive_le32dec(buffer+1);
 switch (dicsize) {
 case 0x00001000:
 case 0x00002000:
 case 0x00004000:
 case 0x00008000:
 case 0x00010000:

 case 0x00020000:
 case 0x00040000:
 case 0x00080000:

 case 0x00100000:

 case 0x00200000:

 case 0x00400000:

 case 0x00800000:

 case 0x01000000:

 case 0x02000000:

 case 0x04000000:

 case 0x08000000:
  bits_checked += 32;
  break;
 default:





  if (dicsize <= 0x03F00000 && dicsize >= 0x00300000 &&
      (dicsize & ((1 << 20)-1)) == 0 &&
      bits_checked == 8 + 64) {
   bits_checked += 32;
   break;
  }



  return (0);
 }




 return (bits_checked);
}
