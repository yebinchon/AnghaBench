
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {scalar_t__ h_FmMuram; } ;
typedef TYPE_1__ t_Fm ;


 int E_INVALID_HANDLE ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;

t_Handle FmGetMuramHandle(t_Handle h_Fm)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;

    SANITY_CHECK_RETURN_VALUE(p_Fm, E_INVALID_HANDLE, ((void*)0));

    return (p_Fm->h_FmMuram);
}
