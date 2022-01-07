
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int longfelem ;
typedef int const felem ;


 int felem_assign (int const,int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_square (int ,int const) ;

__attribute__((used)) static void felem_inv(felem out, const felem in)
{
    felem ftmp, ftmp2;

    felem e2, e4, e8, e16, e32, e64;
    longfelem tmp;
    unsigned i;

    felem_square(tmp, in);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, in, ftmp);
    felem_reduce(ftmp, tmp);
    felem_assign(e2, ftmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, ftmp, e2);
    felem_reduce(ftmp, tmp);
    felem_assign(e4, ftmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_square(tmp, ftmp);
    felem_reduce(ftmp, tmp);
    felem_mul(tmp, ftmp, e4);
    felem_reduce(ftmp, tmp);
    felem_assign(e8, ftmp);
    for (i = 0; i < 8; i++) {
        felem_square(tmp, ftmp);
        felem_reduce(ftmp, tmp);
    }
    felem_mul(tmp, ftmp, e8);
    felem_reduce(ftmp, tmp);
    felem_assign(e16, ftmp);
    for (i = 0; i < 16; i++) {
        felem_square(tmp, ftmp);
        felem_reduce(ftmp, tmp);
    }
    felem_mul(tmp, ftmp, e16);
    felem_reduce(ftmp, tmp);
    felem_assign(e32, ftmp);
    for (i = 0; i < 32; i++) {
        felem_square(tmp, ftmp);
        felem_reduce(ftmp, tmp);
    }
    felem_assign(e64, ftmp);
    felem_mul(tmp, ftmp, in);
    felem_reduce(ftmp, tmp);
    for (i = 0; i < 192; i++) {
        felem_square(tmp, ftmp);
        felem_reduce(ftmp, tmp);
    }

    felem_mul(tmp, e64, e32);
    felem_reduce(ftmp2, tmp);
    for (i = 0; i < 16; i++) {
        felem_square(tmp, ftmp2);
        felem_reduce(ftmp2, tmp);
    }
    felem_mul(tmp, ftmp2, e16);
    felem_reduce(ftmp2, tmp);
    for (i = 0; i < 8; i++) {
        felem_square(tmp, ftmp2);
        felem_reduce(ftmp2, tmp);
    }
    felem_mul(tmp, ftmp2, e8);
    felem_reduce(ftmp2, tmp);
    for (i = 0; i < 4; i++) {
        felem_square(tmp, ftmp2);
        felem_reduce(ftmp2, tmp);
    }
    felem_mul(tmp, ftmp2, e4);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_mul(tmp, ftmp2, e2);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_square(tmp, ftmp2);
    felem_reduce(ftmp2, tmp);
    felem_mul(tmp, ftmp2, in);
    felem_reduce(ftmp2, tmp);

    felem_mul(tmp, ftmp2, ftmp);
    felem_reduce(out, tmp);
}
