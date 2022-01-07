
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int limb ;
typedef int * largefelem ;
typedef int const* felem ;



__attribute__((used)) static void felem_diff_128_64(largefelem out, const felem in)
{
    static const limb two63m6 = (((limb) 1) << 63) - (((limb) 1) << 6);
    static const limb two63m5 = (((limb) 1) << 63) - (((limb) 1) << 5);

    out[0] += two63m6 - in[0];
    out[1] += two63m5 - in[1];
    out[2] += two63m5 - in[2];
    out[3] += two63m5 - in[3];
    out[4] += two63m5 - in[4];
    out[5] += two63m5 - in[5];
    out[6] += two63m5 - in[6];
    out[7] += two63m5 - in[7];
    out[8] += two63m5 - in[8];
}
