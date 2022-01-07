
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMPLXL (double,double) ;
 int assert_equal (int ,int ) ;
 int t_csqrt (int ) ;

__attribute__((used)) static void
test_zeros(void)
{

 assert_equal(t_csqrt(CMPLXL(0.0, 0.0)), CMPLXL(0.0, 0.0));
 assert_equal(t_csqrt(CMPLXL(-0.0, 0.0)), CMPLXL(0.0, 0.0));
 assert_equal(t_csqrt(CMPLXL(0.0, -0.0)), CMPLXL(0.0, -0.0));
 assert_equal(t_csqrt(CMPLXL(-0.0, -0.0)), CMPLXL(0.0, -0.0));
}
