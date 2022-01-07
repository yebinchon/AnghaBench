
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {scalar_t__ h_Hc; } ;
typedef TYPE_1__ t_FmPcd ;
typedef int t_Error ;


 int ASSERT_COND (scalar_t__) ;
 int FmHcPcdSync (scalar_t__) ;

t_Error FmPcdHcSync(t_Handle h_FmPcd)
{
    ASSERT_COND(h_FmPcd);
    ASSERT_COND(((t_FmPcd*)h_FmPcd)->h_Hc);

    return FmHcPcdSync(((t_FmPcd*)h_FmPcd)->h_Hc);
}
