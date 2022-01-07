
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int largefelem ;
typedef int felem ;


 int felem_reduce (int ,int ) ;
 int felem_square (int ,int const) ;

__attribute__((used)) static void felem_square_reduce(felem out, const felem in)
{
    largefelem tmp;
    felem_square(tmp, in);
    felem_reduce(out, tmp);
}
