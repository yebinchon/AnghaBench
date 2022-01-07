
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline bool
_mb_singlebyte(int c)
{

 return ((c & 0xff) <= 0x7f);
}
