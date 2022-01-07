
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfRxSc; int f_Event; int f_Exception; } ;
typedef TYPE_1__ t_FmMacsecSecY ;
typedef int t_Error ;


 int E_INVALID_VALUE ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error CheckFmMacsecSecYParameters(t_FmMacsecSecY *p_FmMacsecSecY)
{
    if (!p_FmMacsecSecY->f_Exception)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Exceptions callback not provided"));

    if (!p_FmMacsecSecY->f_Event)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Events callback not provided"));

    if (!p_FmMacsecSecY->numOfRxSc)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Num of Rx Scs must be greater than '0'"));


    return E_OK;
}
