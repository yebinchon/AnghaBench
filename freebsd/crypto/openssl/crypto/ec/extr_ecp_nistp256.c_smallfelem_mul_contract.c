
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smallfelem ;
typedef int longfelem ;
typedef int felem ;


 int felem_contract (int ,int ) ;
 int felem_reduce (int ,int ) ;
 int smallfelem_mul (int ,int const,int const) ;

__attribute__((used)) static void smallfelem_mul_contract(smallfelem out, const smallfelem in1,
                                    const smallfelem in2)
{
    longfelem longtmp;
    felem tmp;

    smallfelem_mul(longtmp, in1, in2);
    felem_reduce(tmp, longtmp);
    felem_contract(out, tmp);
}
