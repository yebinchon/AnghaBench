
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int largefelem ;
typedef int const felem ;


 int felem_assign (int const,int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_square (int ,int const) ;

__attribute__((used)) static void felem_inv(felem out, const felem in)
{
    felem ftmp, ftmp2, ftmp3, ftmp4;
    largefelem tmp;
    unsigned i;

    felem_square(tmp, in);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, in, ftmp);
    felem_reduce(ftmp, tmp);
    felem_assign(ftmp2, ftmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, in, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);

    felem_square(tmp, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp3, tmp);
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);

    felem_assign(ftmp2, ftmp3);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp3, tmp);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp3, tmp);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp3, tmp);
    felem_square(tmp, ftmp3);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp4, ftmp3);
    felem_mul(tmp, ftmp3, ftmp);
    felem_reduce(ftmp4, tmp);
    felem_square(tmp, ftmp4);
    felem_reduce(ftmp4, tmp);
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp2, ftmp3);

    for (i = 0; i < 8; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp2, ftmp3);

    for (i = 0; i < 16; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp2, ftmp3);

    for (i = 0; i < 32; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp2, ftmp3);

    for (i = 0; i < 64; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp2, ftmp3);

    for (i = 0; i < 128; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);
    felem_assign(ftmp2, ftmp3);

    for (i = 0; i < 256; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp2);
    felem_reduce(ftmp3, tmp);

    for (i = 0; i < 9; i++) {
        felem_square(tmp, ftmp3);
        felem_reduce(ftmp3, tmp);
    }
    felem_mul(tmp, ftmp3, ftmp4);
    felem_reduce(ftmp3, tmp);
    felem_mul(tmp, ftmp3, in);
    felem_reduce(out, tmp);
}
