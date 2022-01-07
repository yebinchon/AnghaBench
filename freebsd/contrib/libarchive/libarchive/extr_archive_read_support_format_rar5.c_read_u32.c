
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct archive_read {int dummy; } ;


 scalar_t__ ARCHIVE_OK ;
 int archive_le32dec (int const*) ;
 scalar_t__ consume (struct archive_read*,int) ;
 int read_ahead (struct archive_read*,int,int const**) ;

__attribute__((used)) static int read_u32(struct archive_read* a, uint32_t* pvalue) {
 const uint8_t* p;
 if(!read_ahead(a, 4, &p))
  return 0;

 *pvalue = archive_le32dec(p);
 return ARCHIVE_OK == consume(a, 4) ? 1 : 0;
}
