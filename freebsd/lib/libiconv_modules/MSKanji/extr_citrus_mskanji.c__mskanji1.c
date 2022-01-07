
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
_mskanji1(int c)
{

 return ((c >= 0x81 && c <= 0x9f) || (c >= 0xe0 && c <= 0xfc));
}
