
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
isascii(int c)
{
 return ((c & ~0x7F) == 0);
}
