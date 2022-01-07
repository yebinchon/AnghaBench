
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bswap32 (int ) ;

__attribute__((used)) static __inline void
padlock_output_block(uint32_t *src, uint32_t *dst, size_t count)
{

 while (count-- > 0)
  *dst++ = bswap32(*src++);
}
