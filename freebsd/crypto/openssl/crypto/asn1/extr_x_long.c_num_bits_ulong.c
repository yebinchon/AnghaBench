
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;



__attribute__((used)) static int num_bits_ulong(unsigned long value)
{
    size_t i;
    unsigned long ret = 0;







    for (i = 0; i < sizeof(value) * 8; i++) {
        ret += (value != 0);
        value >>= 1;
    }

    return (int)ret;
}
