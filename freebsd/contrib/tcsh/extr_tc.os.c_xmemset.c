
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *xmemset(void *loc, int value, size_t len)
{
    char *ptr = loc;

    while (len--)
 *ptr++ = value;
    return loc;
}
