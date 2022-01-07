
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* longfelem ;
typedef int int128_t ;
typedef int* felem ;



__attribute__((used)) static void felem_reduce_(felem out, const longfelem in)
{
    int128_t c;

    c = in[4] + (in[5] << 32);
    out[0] += c;
    out[3] -= c;

    c = in[5] - in[7];
    out[1] += c;
    out[2] -= c;



    out[1] -= (in[4] << 32);
    out[3] += (in[4] << 32);


    out[2] -= (in[5] << 32);


    out[0] -= in[6];
    out[0] -= (in[6] << 32);
    out[1] += (in[6] << 33);
    out[2] += (in[6] * 2);
    out[3] -= (in[6] << 32);


    out[0] -= in[7];
    out[0] -= (in[7] << 32);
    out[2] += (in[7] << 33);
    out[3] += (in[7] * 3);
}
