
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* felem_bytearray ;



__attribute__((used)) static char get_bit(const felem_bytearray in, int i)
{
    if ((i < 0) || (i >= 256))
        return 0;
    return (in[i >> 3] >> (i & 7)) & 1;
}
