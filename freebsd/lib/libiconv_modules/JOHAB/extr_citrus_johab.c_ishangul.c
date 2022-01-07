
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline bool
ishangul(int l, int t)
{

 return ((l >= 0x84 && l <= 0xD3) &&
     ((t >= 0x41 && t <= 0x7E) || (t >= 0x81 && t <= 0xFE)));
}
