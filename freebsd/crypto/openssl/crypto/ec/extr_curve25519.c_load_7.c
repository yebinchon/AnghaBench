
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static uint64_t load_7(const uint8_t *in)
{
    uint64_t result;

    result = in[0];
    result |= ((uint64_t)in[1]) << 8;
    result |= ((uint64_t)in[2]) << 16;
    result |= ((uint64_t)in[3]) << 24;
    result |= ((uint64_t)in[4]) << 32;
    result |= ((uint64_t)in[5]) << 40;
    result |= ((uint64_t)in[6]) << 48;

    return result;
}
