
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int * t_Handle ;
struct TYPE_6__ {scalar_t__ guestMode; } ;
typedef TYPE_1__ t_FmMacsecParams ;
typedef int t_FmMacsecControllerDriver ;


 int E_INVALID_HANDLE ;
 scalar_t__ FM_MACSEC_GUEST_Config (TYPE_1__*) ;
 scalar_t__ FM_MACSEC_MASTER_Config (TYPE_1__*) ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int *) ;

t_Handle FM_MACSEC_Config(t_FmMacsecParams *p_FmMacsecParam)
{
    t_FmMacsecControllerDriver *p_FmMacsecControllerDriver;

    SANITY_CHECK_RETURN_VALUE(p_FmMacsecParam, E_INVALID_HANDLE, ((void*)0));

    if (p_FmMacsecParam->guestMode)
        p_FmMacsecControllerDriver = (t_FmMacsecControllerDriver *)FM_MACSEC_GUEST_Config(p_FmMacsecParam);
    else
        p_FmMacsecControllerDriver = (t_FmMacsecControllerDriver *)FM_MACSEC_MASTER_Config(p_FmMacsecParam);

    if (!p_FmMacsecControllerDriver)
        return ((void*)0);

    return (t_Handle)p_FmMacsecControllerDriver;
}
