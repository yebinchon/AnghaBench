
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const fe51 ;


 int fe51_mul (int const,int const,int const) ;
 int fe51_sq (int const,int const) ;

__attribute__((used)) static void fe51_invert(fe51 out, const fe51 z)
{
    fe51 t0;
    fe51 t1;
    fe51 t2;
    fe51 t3;
    int i;







    fe51_sq(t0, z);


    fe51_sq(t1, t0);
    fe51_sq(t1, t1);


    fe51_mul(t1, z, t1);

    fe51_mul(t0, t0, t1);


    fe51_sq(t2, t0);


    fe51_mul(t1, t1, t2);


    fe51_sq(t2, t1);
    for (i = 1; i < 5; ++i)
        fe51_sq(t2, t2);


    fe51_mul(t1, t2, t1);




    fe51_sq(t2, t1);
    for (i = 1; i < 10; ++i)
        fe51_sq(t2, t2);

    fe51_mul(t2, t2, t1);


    fe51_sq(t3, t2);
    for (i = 1; i < 20; ++i)
        fe51_sq(t3, t3);

    fe51_mul(t2, t3, t2);


    for (i = 0; i < 10; ++i)
        fe51_sq(t2, t2);


    fe51_mul(t1, t2, t1);


    fe51_sq(t2, t1);
    for (i = 1; i < 50; ++i)
        fe51_sq(t2, t2);

    fe51_mul(t2, t2, t1);


    fe51_sq(t3, t2);
    for (i = 1; i < 100; ++i)
        fe51_sq(t3, t3);

    fe51_mul(t2, t3, t2);


    for (i = 0; i < 50; ++i)
        fe51_sq(t2, t2);


    fe51_mul(t1, t2, t1);


    for (i = 0; i < 5; ++i)
        fe51_sq(t1, t1);


    fe51_mul(out, t1, t0);
}
