
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct archive_read {int dummy; } ;


 scalar_t__ ARCHIVE_OK ;
 int archive_le64dec (int const*) ;
 scalar_t__ consume (struct archive_read*,int) ;
 int read_ahead (struct archive_read*,int,int const**) ;

__attribute__((used)) static int read_u64(struct archive_read* a, uint64_t* pvalue) {
 const uint8_t* p;
 if(!read_ahead(a, 8, &p))
  return 0;

 *pvalue = archive_le64dec(p);
 return ARCHIVE_OK == consume(a, 8) ? 1 : 0;
}
