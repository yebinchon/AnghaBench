
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMPLXL (double,double) ;
 double INFINITY ;
 double NAN ;
 int assert (int) ;
 int assert_equal (int ,int ) ;
 double cimagl (int ) ;
 double creall (int ) ;
 int isinf (double) ;
 int isnan (double) ;
 int t_csqrt (int ) ;

__attribute__((used)) static void
test_nans(void)
{

 assert(creall(t_csqrt(CMPLXL(INFINITY, NAN))) == INFINITY);
 assert(isnan(cimagl(t_csqrt(CMPLXL(INFINITY, NAN)))));

 assert(isnan(creall(t_csqrt(CMPLXL(-INFINITY, NAN)))));
 assert(isinf(cimagl(t_csqrt(CMPLXL(-INFINITY, NAN)))));

 assert_equal(t_csqrt(CMPLXL(NAN, INFINITY)),
       CMPLXL(INFINITY, INFINITY));
 assert_equal(t_csqrt(CMPLXL(NAN, -INFINITY)),
       CMPLXL(INFINITY, -INFINITY));

 assert_equal(t_csqrt(CMPLXL(0.0, NAN)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(-0.0, NAN)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(42.0, NAN)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(-42.0, NAN)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(NAN, 0.0)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(NAN, -0.0)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(NAN, 42.0)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(NAN, -42.0)), CMPLXL(NAN, NAN));
 assert_equal(t_csqrt(CMPLXL(NAN, NAN)), CMPLXL(NAN, NAN));
}
