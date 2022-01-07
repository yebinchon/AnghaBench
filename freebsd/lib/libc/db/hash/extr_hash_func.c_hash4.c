
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef size_t u_int32_t ;


 int HASH4 ;

u_int32_t
hash4(const void *key, size_t len)
{
 u_int32_t h, loop;
 const u_int8_t *k;





 h = 0;
 k = key;
 if (len > 0) {
  loop = (len + 8 - 1) >> 3;

  switch (len & (8 - 1)) {
  case 0:
   do {
    h = (h << 5) + h + *k++;;
  case 7:
    h = (h << 5) + h + *k++;;
  case 6:
    h = (h << 5) + h + *k++;;
  case 5:
    h = (h << 5) + h + *k++;;
  case 4:
    h = (h << 5) + h + *k++;;
  case 3:
    h = (h << 5) + h + *k++;;
  case 2:
    h = (h << 5) + h + *k++;;
  case 1:
    h = (h << 5) + h + *k++;;
   } while (--loop);
  }

 }
 return (h);
}
