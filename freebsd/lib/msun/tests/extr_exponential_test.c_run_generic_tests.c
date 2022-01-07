
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 int FE_INEXACT ;
 int FE_OVERFLOW ;
 int FE_UNDERFLOW ;
 double INFINITY ;
 double NAN ;
 int testall0 (double,double,int,int) ;
 int testall1 (double,double,int,int) ;

__attribute__((used)) static void
run_generic_tests(void)
{


 testall0(0.0, 1.0, ALL_STD_EXCEPT, 0);
 testall1(0.0, 0.0, ALL_STD_EXCEPT, 0);
 testall0(-0.0, 1.0, ALL_STD_EXCEPT, 0);
 testall1(-0.0, -0.0, ALL_STD_EXCEPT, 0);


 testall0(NAN, NAN, ALL_STD_EXCEPT, 0);
 testall1(NAN, NAN, ALL_STD_EXCEPT, 0);


 testall0(INFINITY, INFINITY, ALL_STD_EXCEPT, 0);
 testall1(INFINITY, INFINITY, ALL_STD_EXCEPT, 0);


 testall0(-INFINITY, 0.0, ALL_STD_EXCEPT, 0);
 testall1(-INFINITY, -1.0, ALL_STD_EXCEPT, 0);



 testall0(50000.0, INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_OVERFLOW);
 testall1(50000.0, INFINITY, ALL_STD_EXCEPT & ~FE_INEXACT, FE_OVERFLOW);


 testall0(-50000.0, 0.0, ALL_STD_EXCEPT, FE_UNDERFLOW | FE_INEXACT);

 testall1(-50000.0, -1.0, ALL_STD_EXCEPT, FE_INEXACT);
}
