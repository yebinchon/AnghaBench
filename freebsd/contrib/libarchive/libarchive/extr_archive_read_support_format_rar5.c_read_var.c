
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint64_t ;
struct archive_read {int dummy; } ;


 scalar_t__ ARCHIVE_OK ;
 scalar_t__ consume (struct archive_read*,int) ;
 int read_ahead (struct archive_read*,int,size_t const**) ;

__attribute__((used)) static int read_var(struct archive_read* a, uint64_t* pvalue,
    uint64_t* pvalue_len)
{
 uint64_t result = 0;
 size_t shift, i;
 const uint8_t* p;
 uint8_t b;




 if(!read_ahead(a, 8, &p))
  return 0;

 for(shift = 0, i = 0; i < 8; i++, shift += 7) {
  b = p[i];



  result += (b & (uint64_t)0x7F) << shift;





  if((b & 0x80) == 0) {
   if(pvalue) {
    *pvalue = result;
   }





   if(pvalue_len) {
    *pvalue_len = 1 + i;
   } else {






    if(ARCHIVE_OK != consume(a, 1 + i)) {
     return 0;
    }
   }


   return 1;
  }
 }




 if(pvalue) {
  *pvalue = result;
 }

 if(pvalue_len) {
  *pvalue_len = 9;
 } else {
  if(ARCHIVE_OK != consume(a, 9)) {
   return 0;
  }
 }

 return 1;
}
