
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gf ;


 int gf_bias (int ,int) ;
 int gf_sub_RAW (int ,int const,int const) ;
 int gf_weak_reduce (int ) ;

void gf_sub(gf d, const gf a, const gf b)
{
    gf_sub_RAW(d, a, b);
    gf_bias(d, 2);
    gf_weak_reduce(d);
}
