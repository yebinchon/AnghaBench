
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 int CMPLXL (double,double) ;
 int FE_INEXACT ;
 int FE_INVALID ;
 double INFINITY ;
 int M_PI_4 ;
 double NAN ;
 double* finites ;
 unsigned int nitems (double*) ;
 int printf (char*,unsigned int) ;
 int testall (int ,int ,int,int ,int) ;

__attribute__((used)) static void
test_inf(void)
{
 unsigned i;


 for (i = 0; i < nitems(finites); i++) {
  printf("# Run %d..\n", i);
  testall(CMPLXL(finites[i], INFINITY), CMPLXL(NAN, NAN),
   ALL_STD_EXCEPT, FE_INVALID, 1);
 }


 testall(CMPLXL(-INFINITY, M_PI_4), CMPLXL(0.0, 0.0),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(-INFINITY, 3 * M_PI_4), CMPLXL(-0.0, 0.0),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(-INFINITY, 5 * M_PI_4), CMPLXL(-0.0, -0.0),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(-INFINITY, 7 * M_PI_4), CMPLXL(0.0, -0.0),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(-INFINITY, 0.0), CMPLXL(0.0, 0.0),
  ALL_STD_EXCEPT, 0, 1);
 testall(CMPLXL(-INFINITY, -0.0), CMPLXL(0.0, -0.0),
  ALL_STD_EXCEPT, 0, 1);


 testall(CMPLXL(INFINITY, M_PI_4), CMPLXL(INFINITY, INFINITY),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(INFINITY, 3 * M_PI_4), CMPLXL(-INFINITY, INFINITY),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(INFINITY, 5 * M_PI_4), CMPLXL(-INFINITY, -INFINITY),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);
 testall(CMPLXL(INFINITY, 7 * M_PI_4), CMPLXL(INFINITY, -INFINITY),
  ALL_STD_EXCEPT & ~FE_INEXACT, 0, 1);

 testall(CMPLXL(INFINITY, 0.0), CMPLXL(INFINITY, 0.0),
  ALL_STD_EXCEPT, 0, 1);
 testall(CMPLXL(INFINITY, -0.0), CMPLXL(INFINITY, -0.0),
  ALL_STD_EXCEPT, 0, 1);
}
