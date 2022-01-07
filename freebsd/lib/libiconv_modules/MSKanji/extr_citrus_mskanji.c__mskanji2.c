
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
_mskanji2(int c)
{

 return ((c >= 0x40 && c <= 0x7e) || (c >= 0x80 && c <= 0xfc));
}
