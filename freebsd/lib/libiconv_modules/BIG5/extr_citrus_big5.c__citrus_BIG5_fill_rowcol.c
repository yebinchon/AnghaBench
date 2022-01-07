
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int* cell; } ;
typedef TYPE_1__ _BIG5EncodingInfo ;


 int EINVAL ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
_citrus_BIG5_fill_rowcol(void * __restrict ctx, const char * __restrict s,
    uint64_t start, uint64_t end)
{
 _BIG5EncodingInfo *ei;
 uint64_t n;
 int i;

 if (start > 0xFF || end > 0xFF)
  return (EINVAL);
 ei = (_BIG5EncodingInfo *)ctx;
 i = strcmp("row", s) ? 1 : 0;
 i = 1 << i;
 for (n = start; n <= end; ++n)
  ei->cell[n & 0xFF] |= i;
 return (0);
}
