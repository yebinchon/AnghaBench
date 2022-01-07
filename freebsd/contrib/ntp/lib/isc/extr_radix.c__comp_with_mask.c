
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 scalar_t__ memcmp (void*,void*,int) ;

__attribute__((used)) static int
_comp_with_mask(void *addr, void *dest, u_int mask) {


 if (mask == 0)
  return (1);

 if (memcmp(addr, dest, mask / 8) == 0) {
  int n = mask / 8;
  int m = ((~0) << (8 - (mask % 8)));

  if ((mask % 8) == 0 ||
      (((u_char *)addr)[n] & m) == (((u_char *)dest)[n] & m))
   return (1);
 }
 return (0);
}
