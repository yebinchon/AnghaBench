
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p_FmPortDriverParam; } ;
typedef TYPE_1__ t_FmPort ;


 int XX_Free (int *) ;

__attribute__((used)) static void FmPortDriverParamFree(t_FmPort *p_FmPort)
{
    if (p_FmPort->p_FmPortDriverParam)
    {
        XX_Free(p_FmPort->p_FmPortDriverParam);
        p_FmPort->p_FmPortDriverParam = ((void*)0);
    }
}
