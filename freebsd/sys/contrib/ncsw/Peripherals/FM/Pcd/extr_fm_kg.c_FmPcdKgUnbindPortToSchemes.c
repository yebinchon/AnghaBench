
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {int hardwarePortId; } ;
typedef TYPE_1__ t_FmPcdKgInterModuleBindPortToSchemes ;
typedef int t_FmPcd ;
typedef scalar_t__ t_Error ;


 int DecSchemeOwners (int *,TYPE_1__*) ;
 scalar_t__ E_OK ;
 int FALSE ;
 scalar_t__ FmPcdKgBuildBindPortToSchemes (int *,TYPE_1__*,int *,int ) ;
 scalar_t__ KgWriteSp (int *,int ,int ,int ) ;
 int MAJOR ;
 int NO_MSG ;
 int RETURN_ERROR (int ,scalar_t__,int ) ;

t_Error FmPcdKgUnbindPortToSchemes(t_Handle h_FmPcd, t_FmPcdKgInterModuleBindPortToSchemes *p_SchemeBind)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    uint32_t spReg;
    t_Error err = E_OK;

    err = FmPcdKgBuildBindPortToSchemes(p_FmPcd, p_SchemeBind, &spReg, FALSE);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    err = KgWriteSp(p_FmPcd, p_SchemeBind->hardwarePortId, spReg, FALSE);
    if (err)
        RETURN_ERROR(MAJOR, err, NO_MSG);

    DecSchemeOwners(p_FmPcd, p_SchemeBind);

    return E_OK;
}
