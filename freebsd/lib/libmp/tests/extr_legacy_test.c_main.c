
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OK ;
 int c0 ;
 int c1 ;
 int c10 ;
 int c14 ;
 int c15 ;
 int c2 ;
 int c25 ;
 int c3 ;
 int c42 ;
 int c43 ;
 int c44 ;
 int c45 ;
 int c5 ;
 int c6 ;
 int c8 ;
 int mp_itom (int) ;
 int mp_mfree (int ) ;
 int printf (char*) ;
 int t0 ;
 int t1 ;
 int testdiv () ;
 int testgcd () ;
 int testmsqrt () ;
 int testmult () ;
 int testpow () ;
 int testsimpel () ;

int
main(int argc, char *argv[])
{

 printf("1..25\n");






 c0 = mp_itom(0);
 c1 = mp_itom(1);
 c2 = mp_itom(2);
 c3 = mp_itom(3);
 c5 = mp_itom(5);
 c6 = mp_itom(6);
 c8 = mp_itom(8);
 c10 = mp_itom(10);
 c14 = mp_itom(14);
 c15 = mp_itom(15);
 c25 = mp_itom(25);
 c42 = mp_itom(42);
 c43 = mp_itom(43);
 c44 = mp_itom(44);
 c45 = mp_itom(45);


 t0 = mp_itom(0);
 t1 = mp_itom(0);


 testsimpel();
 testgcd();
 testdiv();
 testmult();
 testpow();
 testmsqrt();


 mp_mfree(c0);
 mp_mfree(c1);
 mp_mfree(c2);
 mp_mfree(c3);
 mp_mfree(c5);
 mp_mfree(c6);
 mp_mfree(c8);
 mp_mfree(c10);
 mp_mfree(c14);
 mp_mfree(c15);
 mp_mfree(c25);
 mp_mfree(c42);
 mp_mfree(c43);
 mp_mfree(c44);
 mp_mfree(c45);
 mp_mfree(t0);
 mp_mfree(t1);

 return (EX_OK);
}
