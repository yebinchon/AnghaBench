
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ netEnvId; int valid; int h_FmPcd; scalar_t__ owners; } ;
typedef TYPE_1__ t_FmPcdKgScheme ;
typedef int t_Error ;


 int E_INVALID_STATE ;
 int E_OK ;
 int FALSE ;
 int FmPcdDecNetEnvOwners (int ,scalar_t__) ;
 scalar_t__ ILLEGAL_NETENV ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error InvalidateSchemeSw(t_FmPcdKgScheme *p_Scheme)
{
    if (p_Scheme->owners)
       RETURN_ERROR(MINOR, E_INVALID_STATE, ("Trying to delete a scheme that has ports bound to"));

    if (p_Scheme->netEnvId != ILLEGAL_NETENV)
        FmPcdDecNetEnvOwners(p_Scheme->h_FmPcd, p_Scheme->netEnvId);
    p_Scheme->valid = FALSE;

    return E_OK;
}
