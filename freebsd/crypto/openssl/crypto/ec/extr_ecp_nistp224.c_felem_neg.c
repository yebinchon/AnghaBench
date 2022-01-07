
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
typedef TYPE_1__ widefelem ;
typedef int felem ;


 int felem_diff_128_64 (TYPE_1__,int const) ;
 int felem_reduce (int ,TYPE_1__) ;

__attribute__((used)) static void felem_neg(felem out, const felem in)
{
    widefelem tmp = {0};
    felem_diff_128_64(tmp, in);
    felem_reduce(out, tmp);
}
