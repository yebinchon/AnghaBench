
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALL_STD_EXCEPT ;
 int CMPLXL (double,double) ;
 int FE_INEXACT ;
 int FE_INVALID ;
 double INFINITY ;
 double NAN ;
 double* finites ;
 unsigned int nitems (double*) ;
 int printf (char*,unsigned int) ;
 int testall (int ,int ,int,int ,int) ;

__attribute__((used)) static void
test_nan(void)
{
 unsigned i;



 for (i = 0; i < nitems(finites); i++) {
  printf("# Run %d..\n", i);
  testall(CMPLXL(finites[i], NAN), CMPLXL(NAN, NAN),
   ALL_STD_EXCEPT & ~FE_INVALID, 0, 0);
  if (finites[i] == 0.0)
   continue;

  testall(CMPLXL(NAN, finites[i]), CMPLXL(NAN, NAN),
   ALL_STD_EXCEPT & ~(FE_INVALID | FE_INEXACT), 0, 0);
 }


 testall(CMPLXL(NAN, 0.0), CMPLXL(NAN, 0.0), ALL_STD_EXCEPT, 0, 1);
 testall(CMPLXL(NAN, -0.0), CMPLXL(NAN, -0.0), ALL_STD_EXCEPT, 0, 1);


 testall(CMPLXL(INFINITY, NAN), CMPLXL(INFINITY, NAN),
  ALL_STD_EXCEPT, 0, 0);

 testall(CMPLXL(-INFINITY, NAN), CMPLXL(0.0, 0.0),
  ALL_STD_EXCEPT, 0, 0);

 testall(CMPLXL(NAN, NAN), CMPLXL(NAN, NAN),
  ALL_STD_EXCEPT, 0, 0);
}
