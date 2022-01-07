
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
elf_hash(const char *name)
{
    const unsigned char *p = (const unsigned char *) name;
    unsigned long h = 0;
    unsigned long g;

    while (*p != '\0') {
 h = (h << 4) + *p++;
 if ((g = h & 0xf0000000) != 0)
     h ^= g >> 24;
 h &= ~g;
    }
    return h;
}
