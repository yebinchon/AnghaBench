
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int largefelem ;
typedef int felem ;


 int felem_mul (int ,int const,int const) ;
 int felem_reduce (int ,int ) ;

__attribute__((used)) static void felem_mul_reduce(felem out, const felem in1, const felem in2)
{
    largefelem tmp;
    felem_mul(tmp, in1, in2);
    felem_reduce(out, tmp);
}
