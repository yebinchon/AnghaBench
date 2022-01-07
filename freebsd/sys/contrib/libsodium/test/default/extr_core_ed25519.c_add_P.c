
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
add_P(unsigned char * const S)
{
    static const unsigned char P[32] = {
        0xed, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
        0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x7f
    };
    unsigned char c = 0U;
    unsigned int i;
    unsigned int s;

    for (i = 0U; i < 32U; i++) {
        s = S[i] + P[i] + c;
        S[i] = (unsigned char) s;
        c = (s >> 8) & 1;
    }
}
