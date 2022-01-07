
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline bool
is_94charset(int c)
{

 return (c >= 0x21 && c <= 0x7E);
}
