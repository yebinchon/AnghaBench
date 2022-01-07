
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint128_t ;
typedef int* largefelem ;
typedef int* felem ;


 int felem_scalar (int*,int* const,int) ;

__attribute__((used)) static void felem_mul(largefelem out, const felem in1, const felem in2)
{
    felem in2x2;
    felem_scalar(in2x2, in2, 2);

    out[0] = ((uint128_t) in1[0]) * in2[0];

    out[1] = ((uint128_t) in1[0]) * in2[1] +
             ((uint128_t) in1[1]) * in2[0];

    out[2] = ((uint128_t) in1[0]) * in2[2] +
             ((uint128_t) in1[1]) * in2[1] +
             ((uint128_t) in1[2]) * in2[0];

    out[3] = ((uint128_t) in1[0]) * in2[3] +
             ((uint128_t) in1[1]) * in2[2] +
             ((uint128_t) in1[2]) * in2[1] +
             ((uint128_t) in1[3]) * in2[0];

    out[4] = ((uint128_t) in1[0]) * in2[4] +
             ((uint128_t) in1[1]) * in2[3] +
             ((uint128_t) in1[2]) * in2[2] +
             ((uint128_t) in1[3]) * in2[1] +
             ((uint128_t) in1[4]) * in2[0];

    out[5] = ((uint128_t) in1[0]) * in2[5] +
             ((uint128_t) in1[1]) * in2[4] +
             ((uint128_t) in1[2]) * in2[3] +
             ((uint128_t) in1[3]) * in2[2] +
             ((uint128_t) in1[4]) * in2[1] +
             ((uint128_t) in1[5]) * in2[0];

    out[6] = ((uint128_t) in1[0]) * in2[6] +
             ((uint128_t) in1[1]) * in2[5] +
             ((uint128_t) in1[2]) * in2[4] +
             ((uint128_t) in1[3]) * in2[3] +
             ((uint128_t) in1[4]) * in2[2] +
             ((uint128_t) in1[5]) * in2[1] +
             ((uint128_t) in1[6]) * in2[0];

    out[7] = ((uint128_t) in1[0]) * in2[7] +
             ((uint128_t) in1[1]) * in2[6] +
             ((uint128_t) in1[2]) * in2[5] +
             ((uint128_t) in1[3]) * in2[4] +
             ((uint128_t) in1[4]) * in2[3] +
             ((uint128_t) in1[5]) * in2[2] +
             ((uint128_t) in1[6]) * in2[1] +
             ((uint128_t) in1[7]) * in2[0];

    out[8] = ((uint128_t) in1[0]) * in2[8] +
             ((uint128_t) in1[1]) * in2[7] +
             ((uint128_t) in1[2]) * in2[6] +
             ((uint128_t) in1[3]) * in2[5] +
             ((uint128_t) in1[4]) * in2[4] +
             ((uint128_t) in1[5]) * in2[3] +
             ((uint128_t) in1[6]) * in2[2] +
             ((uint128_t) in1[7]) * in2[1] +
             ((uint128_t) in1[8]) * in2[0];



    out[0] += ((uint128_t) in1[1]) * in2x2[8] +
              ((uint128_t) in1[2]) * in2x2[7] +
              ((uint128_t) in1[3]) * in2x2[6] +
              ((uint128_t) in1[4]) * in2x2[5] +
              ((uint128_t) in1[5]) * in2x2[4] +
              ((uint128_t) in1[6]) * in2x2[3] +
              ((uint128_t) in1[7]) * in2x2[2] +
              ((uint128_t) in1[8]) * in2x2[1];

    out[1] += ((uint128_t) in1[2]) * in2x2[8] +
              ((uint128_t) in1[3]) * in2x2[7] +
              ((uint128_t) in1[4]) * in2x2[6] +
              ((uint128_t) in1[5]) * in2x2[5] +
              ((uint128_t) in1[6]) * in2x2[4] +
              ((uint128_t) in1[7]) * in2x2[3] +
              ((uint128_t) in1[8]) * in2x2[2];

    out[2] += ((uint128_t) in1[3]) * in2x2[8] +
              ((uint128_t) in1[4]) * in2x2[7] +
              ((uint128_t) in1[5]) * in2x2[6] +
              ((uint128_t) in1[6]) * in2x2[5] +
              ((uint128_t) in1[7]) * in2x2[4] +
              ((uint128_t) in1[8]) * in2x2[3];

    out[3] += ((uint128_t) in1[4]) * in2x2[8] +
              ((uint128_t) in1[5]) * in2x2[7] +
              ((uint128_t) in1[6]) * in2x2[6] +
              ((uint128_t) in1[7]) * in2x2[5] +
              ((uint128_t) in1[8]) * in2x2[4];

    out[4] += ((uint128_t) in1[5]) * in2x2[8] +
              ((uint128_t) in1[6]) * in2x2[7] +
              ((uint128_t) in1[7]) * in2x2[6] +
              ((uint128_t) in1[8]) * in2x2[5];

    out[5] += ((uint128_t) in1[6]) * in2x2[8] +
              ((uint128_t) in1[7]) * in2x2[7] +
              ((uint128_t) in1[8]) * in2x2[6];

    out[6] += ((uint128_t) in1[7]) * in2x2[8] +
              ((uint128_t) in1[8]) * in2x2[7];

    out[7] += ((uint128_t) in1[8]) * in2x2[8];
}
