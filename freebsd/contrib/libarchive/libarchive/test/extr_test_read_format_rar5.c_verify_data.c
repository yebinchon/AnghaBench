
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ archive_le32dec (int const*) ;

__attribute__((used)) static
int verify_data(const uint8_t* data_ptr, int magic, int size) {
 int i = 0;







 for(i = 0; i < size / 4; ++i) {
  const int k = i + 1;
  const signed int* lptr = (const signed int*) &data_ptr[i * 4];
  signed int val = k * k - 3 * k + (1 + magic);

  if(val < 0)
   val = 0;




  if(archive_le32dec(lptr) != (uint32_t) val)
   return 0;
 }

 return 1;
}
