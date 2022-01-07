
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 double CMPLXL (double,double) ;
 int testall (double,double,int ,int ,int) ;

__attribute__((used)) static void
test_zero(void)
{


 testall(0.0, 1.0, ALL_STD_EXCEPT, 0, 1);
 testall(-0.0, 1.0, ALL_STD_EXCEPT, 0, 1);
 testall(CMPLXL(0.0, -0.0), CMPLXL(1.0, -0.0), ALL_STD_EXCEPT, 0, 1);
 testall(CMPLXL(-0.0, -0.0), CMPLXL(1.0, -0.0), ALL_STD_EXCEPT, 0, 1);
}
