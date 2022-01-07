
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;


 int ASSERT_COND (scalar_t__) ;

t_Handle FmPcdGetHcHandle(t_Handle h_FmPcd)
{
    ASSERT_COND(h_FmPcd);
    return ((t_FmPcd*)h_FmPcd)->h_Hc;
}
