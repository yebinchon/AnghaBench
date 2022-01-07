
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const fe25519 ;


 int fe25519_mul (int const*,int const*,int const*) ;
 int fe25519_square (int const*,int const*) ;

void fe25519_invert(fe25519 *r, const fe25519 *x)
{
 fe25519 z2;
 fe25519 z9;
 fe25519 z11;
 fe25519 z2_5_0;
 fe25519 z2_10_0;
 fe25519 z2_20_0;
 fe25519 z2_50_0;
 fe25519 z2_100_0;
 fe25519 t0;
 fe25519 t1;
 int i;

         fe25519_square(&z2,x);
         fe25519_square(&t1,&z2);
         fe25519_square(&t0,&t1);
         fe25519_mul(&z9,&t0,x);
          fe25519_mul(&z11,&z9,&z2);
          fe25519_square(&t0,&z11);
                      fe25519_mul(&z2_5_0,&t0,&z9);

                 fe25519_square(&t0,&z2_5_0);
                 fe25519_square(&t1,&t0);
                 fe25519_square(&t0,&t1);
                 fe25519_square(&t1,&t0);
                  fe25519_square(&t0,&t1);
                  fe25519_mul(&z2_10_0,&t0,&z2_5_0);

                  fe25519_square(&t0,&z2_10_0);
                  fe25519_square(&t1,&t0);
                   for (i = 2;i < 10;i += 2) { fe25519_square(&t0,&t1); fe25519_square(&t1,&t0); }
                  fe25519_mul(&z2_20_0,&t1,&z2_10_0);

                  fe25519_square(&t0,&z2_20_0);
                  fe25519_square(&t1,&t0);
                   for (i = 2;i < 20;i += 2) { fe25519_square(&t0,&t1); fe25519_square(&t1,&t0); }
                  fe25519_mul(&t0,&t1,&z2_20_0);

                  fe25519_square(&t1,&t0);
                  fe25519_square(&t0,&t1);
                   for (i = 2;i < 10;i += 2) { fe25519_square(&t1,&t0); fe25519_square(&t0,&t1); }
                  fe25519_mul(&z2_50_0,&t0,&z2_10_0);

                  fe25519_square(&t0,&z2_50_0);
                  fe25519_square(&t1,&t0);
                    for (i = 2;i < 50;i += 2) { fe25519_square(&t0,&t1); fe25519_square(&t1,&t0); }
                   fe25519_mul(&z2_100_0,&t1,&z2_50_0);

                   fe25519_square(&t1,&z2_100_0);
                   fe25519_square(&t0,&t1);
                     for (i = 2;i < 100;i += 2) { fe25519_square(&t1,&t0); fe25519_square(&t0,&t1); }
                   fe25519_mul(&t1,&t0,&z2_100_0);

                   fe25519_square(&t0,&t1);
                   fe25519_square(&t1,&t0);
                    for (i = 2;i < 50;i += 2) { fe25519_square(&t0,&t1); fe25519_square(&t1,&t0); }
                   fe25519_mul(&t0,&t1,&z2_50_0);

                   fe25519_square(&t1,&t0);
                   fe25519_square(&t0,&t1);
                   fe25519_square(&t1,&t0);
                   fe25519_square(&t0,&t1);
                   fe25519_square(&t1,&t0);
                  fe25519_mul(r,&t1,&z11);
}
