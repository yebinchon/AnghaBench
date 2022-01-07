
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
byteswap32(uint32_t v)
{

 return ((v & 0xff000000) >> 24 | (v & 0x00ff0000) >> 8 |
     (v & 0x0000ff00) << 8 | (v & 0x000000ff) << 24);
}
