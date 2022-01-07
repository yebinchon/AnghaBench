
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ limb ;
typedef int largefelem ;
typedef int const felem ;


 int copy_conditional (int const,int const,scalar_t__) ;
 int felem_assign (int const,int const) ;
 int felem_diff128 (int ,int ) ;
 int felem_diff64 (int const,int const) ;
 int felem_diff_128_64 (int ,int const) ;
 scalar_t__ felem_is_zero (int const) ;
 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int const,int ) ;
 int felem_scalar (int const,int const,int) ;
 int felem_scalar128 (int ,int) ;
 int felem_scalar64 (int const,int) ;
 int felem_square (int ,int const) ;
 int felem_sum64 (int const,int const) ;
 int point_double (int const,int const,int const,int const,int const,int const) ;

__attribute__((used)) static void point_add(felem x3, felem y3, felem z3,
                      const felem x1, const felem y1, const felem z1,
                      const int mixed, const felem x2, const felem y2,
                      const felem z2)
{
    felem ftmp, ftmp2, ftmp3, ftmp4, ftmp5, ftmp6, x_out, y_out, z_out;
    largefelem tmp, tmp2;
    limb x_equal, y_equal, z1_is_zero, z2_is_zero;

    z1_is_zero = felem_is_zero(z1);
    z2_is_zero = felem_is_zero(z2);


    felem_square(tmp, z1);
    felem_reduce(ftmp, tmp);

    if (!mixed) {

        felem_square(tmp, z2);
        felem_reduce(ftmp2, tmp);


        felem_mul(tmp, x1, ftmp2);
        felem_reduce(ftmp3, tmp);


        felem_assign(ftmp5, z1);
        felem_sum64(ftmp5, z2);



        felem_square(tmp, ftmp5);

        felem_diff_128_64(tmp, ftmp);

        felem_diff_128_64(tmp, ftmp2);

        felem_reduce(ftmp5, tmp);


        felem_mul(tmp, ftmp2, z2);
        felem_reduce(ftmp2, tmp);


        felem_mul(tmp, y1, ftmp2);
        felem_reduce(ftmp6, tmp);
    } else {





        felem_assign(ftmp3, x1);


        felem_scalar(ftmp5, z1, 2);


        felem_assign(ftmp6, y1);
    }


    felem_mul(tmp, x2, ftmp);



    felem_diff_128_64(tmp, ftmp3);

    felem_reduce(ftmp4, tmp);

    x_equal = felem_is_zero(ftmp4);


    felem_mul(tmp, ftmp5, ftmp4);
    felem_reduce(z_out, tmp);


    felem_mul(tmp, ftmp, z1);
    felem_reduce(ftmp, tmp);


    felem_mul(tmp, y2, ftmp);



    felem_diff_128_64(tmp, ftmp6);

    felem_reduce(ftmp5, tmp);
    y_equal = felem_is_zero(ftmp5);
    felem_scalar64(ftmp5, 2);


    if (x_equal && y_equal && !z1_is_zero && !z2_is_zero) {
        point_double(x3, y3, z3, x1, y1, z1);
        return;
    }


    felem_assign(ftmp, ftmp4);
    felem_scalar64(ftmp, 2);

    felem_square(tmp, ftmp);

    felem_reduce(ftmp, tmp);


    felem_mul(tmp, ftmp4, ftmp);
    felem_reduce(ftmp2, tmp);


    felem_mul(tmp, ftmp3, ftmp);
    felem_reduce(ftmp4, tmp);


    felem_square(tmp, ftmp5);

    felem_diff_128_64(tmp, ftmp2);

    felem_assign(ftmp3, ftmp4);
    felem_scalar64(ftmp4, 2);

    felem_diff_128_64(tmp, ftmp4);

    felem_reduce(x_out, tmp);


    felem_diff64(ftmp3, x_out);



    felem_mul(tmp, ftmp5, ftmp3);

    felem_mul(tmp2, ftmp6, ftmp2);

    felem_scalar128(tmp2, 2);

    felem_diff128(tmp, tmp2);





    felem_reduce(y_out, tmp);

    copy_conditional(x_out, x2, z1_is_zero);
    copy_conditional(x_out, x1, z2_is_zero);
    copy_conditional(y_out, y2, z1_is_zero);
    copy_conditional(y_out, y1, z2_is_zero);
    copy_conditional(z_out, z2, z1_is_zero);
    copy_conditional(z_out, z1, z2_is_zero);
    felem_assign(x3, x_out);
    felem_assign(y3, y_out);
    felem_assign(z3, z_out);
}
