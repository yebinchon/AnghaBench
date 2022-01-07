
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline int iscntrl(int c)
{
 return (c >= 0 && c < ' ') || c == 127;
}
