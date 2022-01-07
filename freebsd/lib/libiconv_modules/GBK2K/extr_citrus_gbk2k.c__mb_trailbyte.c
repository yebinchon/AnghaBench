
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline bool
_mb_trailbyte(int c)
{

 c &= 0xff;
 return ((0x40 <= c && c <= 0x7e) || (0x80 <= c && c <= 0xfe));
}
