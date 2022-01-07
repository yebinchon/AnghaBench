
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void ec_GFp_nistp_recode_scalar_bits(unsigned char *sign,
                                     unsigned char *digit, unsigned char in)
{
    unsigned char s, d;

    s = ~((in >> 5) - 1);

    d = (1 << 6) - in - 1;
    d = (d & s) | (in & ~s);
    d = (d >> 1) + (d & 1);

    *sign = s & 1;
    *digit = d;
}
