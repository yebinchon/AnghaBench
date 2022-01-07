
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpio {void* read_header; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_WARN ;
 unsigned char* __archive_read_ahead (struct archive_read*,int,int *) ;
 void* header_bin_be ;
 void* header_bin_le ;
 void* header_newc ;
 void* header_odc ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;

__attribute__((used)) static int
archive_read_format_cpio_bid(struct archive_read *a, int best_bid)
{
 const unsigned char *p;
 struct cpio *cpio;
 int bid;

 (void)best_bid;

 cpio = (struct cpio *)(a->format->data);

 if ((p = __archive_read_ahead(a, 6, ((void*)0))) == ((void*)0))
  return (-1);

 bid = 0;
 if (memcmp(p, "070707", 6) == 0) {

  cpio->read_header = header_odc;
  bid += 48;




 } else if (memcmp(p, "070727", 6) == 0) {

  cpio->read_header = header_odc;
  bid += 48;




 } else if (memcmp(p, "070701", 6) == 0) {

  cpio->read_header = header_newc;
  bid += 48;




 } else if (memcmp(p, "070702", 6) == 0) {


  cpio->read_header = header_newc;
  bid += 48;




 } else if (p[0] * 256 + p[1] == 070707) {

  cpio->read_header = header_bin_be;
  bid += 16;

 } else if (p[0] + p[1] * 256 == 070707) {

  cpio->read_header = header_bin_le;
  bid += 16;

 } else
  return (ARCHIVE_WARN);

 return (bid);
}
