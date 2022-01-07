
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void bit_set(unsigned char *set, unsigned int bit)
{
    set[bit >> 3] |= 1 << (bit & 0x7);
}
