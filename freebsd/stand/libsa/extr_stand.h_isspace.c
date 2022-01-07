
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline int isspace(int c)
{
    return c == ' ' || (c >= 0x9 && c <= 0xd);
}
