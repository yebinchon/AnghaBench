
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline uint8_t calc_sig(void *wqe, int size)
{
 int i;
 uint8_t *p = wqe;
 uint8_t res = 0;

 for (i = 0; i < size; ++i)
  res ^= p[i];

 return ~res;
}
