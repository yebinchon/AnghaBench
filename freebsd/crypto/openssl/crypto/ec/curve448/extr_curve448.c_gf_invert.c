
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask_t ;
typedef int const gf ;


 int assert (int ) ;
 int gf_copy (int const,int const) ;
 int gf_isr (int const,int const) ;
 int gf_mul (int const,int const,int const) ;
 int gf_sqr (int const,int const) ;

__attribute__((used)) static void gf_invert(gf y, const gf x, int assert_nonzero)
{
    mask_t ret;
    gf t1, t2;

    gf_sqr(t1, x);
    ret = gf_isr(t2, t1);
    (void)ret;
    if (assert_nonzero)
        assert(ret);
    gf_sqr(t1, t2);
    gf_mul(t2, t1, x);
    gf_copy(y, t2);
}
