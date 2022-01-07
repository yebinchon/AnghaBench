
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {TYPE_1__* p_FmPcdPlcr; } ;
typedef TYPE_2__ t_FmPcd ;
struct TYPE_4__ {size_t numOfSharedProfiles; size_t* sharedProfilesIds; } ;


 int E_INVALID_HANDLE ;
 int FALSE ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_2__*,int ,int) ;
 int TRUE ;

__attribute__((used)) static bool IsProfileShared(t_Handle h_FmPcd, uint16_t absoluteProfileId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    uint16_t i;

    SANITY_CHECK_RETURN_VALUE(p_FmPcd, E_INVALID_HANDLE, FALSE);

    for (i=0;i<p_FmPcd->p_FmPcdPlcr->numOfSharedProfiles;i++)
        if (p_FmPcd->p_FmPcdPlcr->sharedProfilesIds[i] == absoluteProfileId)
            return TRUE;
    return FALSE;
}
