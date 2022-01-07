
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_char ;


 int HASHC ;

u_int32_t
hash(const void *keyarg, size_t len)
{
 const u_char *key;
 size_t loop;
 u_int32_t h;



 h = 0;
 key = keyarg;
 if (len > 0) {
  loop = (len + 8 - 1) >> 3;

  switch (len & (8 - 1)) {
  case 0:
   do {
    h = *key++ + 65599 * h;

  case 7:
    h = *key++ + 65599 * h;

  case 6:
    h = *key++ + 65599 * h;

  case 5:
    h = *key++ + 65599 * h;

  case 4:
    h = *key++ + 65599 * h;

  case 3:
    h = *key++ + 65599 * h;

  case 2:
    h = *key++ + 65599 * h;

  case 1:
    h = *key++ + 65599 * h;
   } while (--loop);
  }
 }
 return (h);
}
