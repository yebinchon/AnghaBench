
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMPLXL (double const,double const) ;

 int assert_equal (int ,int ) ;
 double const copysignl (double const,double const) ;
 scalar_t__ isfinite (double const) ;
 unsigned int nitems (double const*) ;
 int t_csqrt (int ) ;

__attribute__((used)) static void
test_infinities(void)
{
 static const double vals[] = {
  0.0,
  -0.0,
  42.0,
  -42.0,
  128,
  -128,
 };

 unsigned i;

 for (i = 0; i < nitems(vals); i++) {
  if (isfinite(vals[i])) {
   assert_equal(t_csqrt(CMPLXL(-128, vals[i])),
       CMPLXL(0.0, copysignl(128, vals[i])));
   assert_equal(t_csqrt(CMPLXL(128, vals[i])),
       CMPLXL(128, copysignl(0.0, vals[i])));
  }
  assert_equal(t_csqrt(CMPLXL(vals[i], 128)),
      CMPLXL(128, 128));
  assert_equal(t_csqrt(CMPLXL(vals[i], -128)),
      CMPLXL(128, -128));
 }
}
