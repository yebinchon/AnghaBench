
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void mlx4_bf_copy(unsigned long *dst,
    unsigned long *src,
    unsigned bytecnt)
{
 while (bytecnt > 0) {
  *dst++ = *src++;
  *dst++ = *src++;
  bytecnt -= 2 * sizeof(long);
 }
}
