
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f_Exception; } ;
typedef TYPE_1__ t_FmMacsec ;
typedef int t_Error ;


 int E_INVALID_VALUE ;
 int E_OK ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error CheckFmMacsecParameters(t_FmMacsec *p_FmMacsec)
{
    if (!p_FmMacsec->f_Exception)
        RETURN_ERROR(MAJOR, E_INVALID_VALUE, ("Exceptions callback not provided"));

    return E_OK;
}
