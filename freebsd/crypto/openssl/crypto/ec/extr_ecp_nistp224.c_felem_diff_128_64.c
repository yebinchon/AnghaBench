
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int widelimb ;
typedef int * widefelem ;
typedef scalar_t__* felem ;



__attribute__((used)) static void felem_diff_128_64(widefelem out, const felem in)
{
    static const widelimb two64p8 = (((widelimb) 1) << 64) +
        (((widelimb) 1) << 8);
    static const widelimb two64m8 = (((widelimb) 1) << 64) -
        (((widelimb) 1) << 8);
    static const widelimb two64m48m8 = (((widelimb) 1) << 64) -
        (((widelimb) 1) << 48) - (((widelimb) 1) << 8);


    out[0] += two64p8;
    out[1] += two64m48m8;
    out[2] += two64m8;
    out[3] += two64m8;

    out[0] -= in[0];
    out[1] -= in[1];
    out[2] -= in[2];
    out[3] -= in[3];
}
