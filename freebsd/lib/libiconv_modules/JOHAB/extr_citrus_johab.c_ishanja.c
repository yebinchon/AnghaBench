
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline bool
ishanja(int l, int t)
{

 return (((l >= 0xD9 && l <= 0xDE) || (l >= 0xE0 && l <= 0xF9)) &&
     ((t >= 0x31 && t <= 0x7E) || (t >= 0x91 && t <= 0xFE)));
}
