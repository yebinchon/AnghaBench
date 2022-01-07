
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void xor_aes_block(u8 *dst, const u8 *src)
{
 u32 *d = (u32 *) dst;
 u32 *s = (u32 *) src;
 *d++ ^= *s++;
 *d++ ^= *s++;
 *d++ ^= *s++;
 *d++ ^= *s++;
}
