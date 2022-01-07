
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int8_t ;



int
ar9300_compression_header_unpack(u_int8_t *best, int *code, int *reference,
    int *length, int *major, int *minor)
{
    unsigned long value[4];

    value[0] = best[0];
    value[1] = best[1];
    value[2] = best[2];
    value[3] = best[3];
    *code = ((value[0] >> 5) & 0x0007);
    *reference = (value[0] & 0x001f) | ((value[1] >> 2) & 0x0020);
    *length = ((value[1] << 4) & 0x07f0) | ((value[2] >> 4) & 0x000f);
    *major = (value[2] & 0x000f);
    *minor = (value[3] & 0x00ff);

    return 4;
}
