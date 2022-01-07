
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint128_t ;
typedef int* largefelem ;
typedef int* felem ;


 int felem_scalar (int*,int* const,int) ;

__attribute__((used)) static void felem_square(largefelem out, const felem in)
{
    felem inx2, inx4;
    felem_scalar(inx2, in, 2);
    felem_scalar(inx4, in, 4);
    out[0] = ((uint128_t) in[0]) * in[0];
    out[1] = ((uint128_t) in[0]) * inx2[1];
    out[2] = ((uint128_t) in[0]) * inx2[2] + ((uint128_t) in[1]) * in[1];
    out[3] = ((uint128_t) in[0]) * inx2[3] + ((uint128_t) in[1]) * inx2[2];
    out[4] = ((uint128_t) in[0]) * inx2[4] +
             ((uint128_t) in[1]) * inx2[3] + ((uint128_t) in[2]) * in[2];
    out[5] = ((uint128_t) in[0]) * inx2[5] +
             ((uint128_t) in[1]) * inx2[4] + ((uint128_t) in[2]) * inx2[3];
    out[6] = ((uint128_t) in[0]) * inx2[6] +
             ((uint128_t) in[1]) * inx2[5] +
             ((uint128_t) in[2]) * inx2[4] + ((uint128_t) in[3]) * in[3];
    out[7] = ((uint128_t) in[0]) * inx2[7] +
             ((uint128_t) in[1]) * inx2[6] +
             ((uint128_t) in[2]) * inx2[5] + ((uint128_t) in[3]) * inx2[4];
    out[8] = ((uint128_t) in[0]) * inx2[8] +
             ((uint128_t) in[1]) * inx2[7] +
             ((uint128_t) in[2]) * inx2[6] +
             ((uint128_t) in[3]) * inx2[5] + ((uint128_t) in[4]) * in[4];
    out[0] += ((uint128_t) in[1]) * inx4[8] +
              ((uint128_t) in[2]) * inx4[7] +
              ((uint128_t) in[3]) * inx4[6] + ((uint128_t) in[4]) * inx4[5];


    out[1] += ((uint128_t) in[2]) * inx4[8] +
              ((uint128_t) in[3]) * inx4[7] +
              ((uint128_t) in[4]) * inx4[6] + ((uint128_t) in[5]) * inx2[5];


    out[2] += ((uint128_t) in[3]) * inx4[8] +
              ((uint128_t) in[4]) * inx4[7] + ((uint128_t) in[5]) * inx4[6];


    out[3] += ((uint128_t) in[4]) * inx4[8] +
              ((uint128_t) in[5]) * inx4[7] + ((uint128_t) in[6]) * inx2[6];


    out[4] += ((uint128_t) in[5]) * inx4[8] + ((uint128_t) in[6]) * inx4[7];


    out[5] += ((uint128_t) in[6]) * inx4[8] + ((uint128_t) in[7]) * inx2[7];


    out[6] += ((uint128_t) in[7]) * inx4[8];


    out[7] += ((uint128_t) in[8]) * inx2[8];
}
