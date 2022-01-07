
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cvmx_debug_memcpy_align (void *dest, const void *src, int size)
{
  long long *dest1 = (long long*)dest;
  const long long *src1 = (const long long*)src;
  int i;
  if (size == 40)
  {
    long long a0, a1, a2, a3, a4;
    a0 = src1[0];
    a1 = src1[1];
    a2 = src1[2];
    a3 = src1[3];
    a4 = src1[4];
    dest1[0] = a0;
    dest1[1] = a1;
    dest1[2] = a2;
    dest1[3] = a3;
    dest1[4] = a4;
    return;
  }
  for(i = 0;i < size;i+=8)
  {
    *dest1 = *src1;
    dest1++;
    src1++;
  }
}
