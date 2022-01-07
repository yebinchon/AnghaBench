
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static inline uint16_t
byteswap16(uint16_t v)
{

 return ((v & 0xff00) >> 8 | (v & 0xff) << 8);
}
