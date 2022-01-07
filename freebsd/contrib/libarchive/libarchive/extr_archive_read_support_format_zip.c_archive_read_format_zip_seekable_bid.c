
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip {int dummy; } ;
struct archive_read {TYPE_1__* format; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ data; } ;


 int SEEK_END ;
 char* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 scalar_t__ __archive_read_seek (struct archive_read*,int,int ) ;
 int memcmp (char const*,char*,int) ;
 int read_eocd (struct zip*,char const*,scalar_t__) ;
 int read_zip64_eocd (struct archive_read*,struct zip*,char const*) ;
 scalar_t__ zipmin (int,scalar_t__) ;

__attribute__((used)) static int
archive_read_format_zip_seekable_bid(struct archive_read *a, int best_bid)
{
 struct zip *zip = (struct zip *)a->format->data;
 int64_t file_size, current_offset;
 const char *p;
 int i, tail;



 if (best_bid > 32)
  return (-1);

 file_size = __archive_read_seek(a, 0, SEEK_END);
 if (file_size <= 0)
  return 0;



 tail = (int)zipmin(1024 * 16, file_size);
 current_offset = __archive_read_seek(a, -tail, SEEK_END);
 if (current_offset < 0)
  return 0;
 if ((p = __archive_read_ahead(a, (size_t)tail, ((void*)0))) == ((void*)0))
  return 0;




 for (i = tail - 22; i > 0;) {
  switch (p[i]) {
  case 'P':
   if (memcmp(p + i, "PK\005\006", 4) == 0) {
    int ret = read_eocd(zip, p + i,
        current_offset + i);


    if (i >= 20 && memcmp(p + i - 20, "PK\006\007", 4) == 0) {
     int ret_zip64 = read_zip64_eocd(a, zip, p + i - 20);
     if (ret_zip64 > ret)
      ret = ret_zip64;
    }
    return (ret);
   }
   i -= 4;
   break;
  case 'K': i -= 1; break;
  case 005: i -= 2; break;
  case 006: i -= 3; break;
  default: i -= 4; break;
  }
 }
 return 0;
}
