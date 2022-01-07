
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cast_int (unsigned int) ;

int luaO_int2fb (unsigned int x) {
  int e = 0;
  if (x < 8) return x;
  while (x >= (8 << 4)) {
    x = (x + 0xf) >> 4;
    e += 4;
  }
  while (x >= (8 << 1)) {
    x = (x + 1) >> 1;
    e++;
  }
  return ((e+1) << 3) | (cast_int(x) - 8);
}
