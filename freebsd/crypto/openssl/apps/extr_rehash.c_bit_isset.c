
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bit_isset(unsigned char *set, unsigned int bit)
{
    return set[bit >> 3] & (1 << (bit & 0x7));
}
