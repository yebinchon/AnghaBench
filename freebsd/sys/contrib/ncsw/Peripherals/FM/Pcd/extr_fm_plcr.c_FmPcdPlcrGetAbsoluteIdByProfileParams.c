
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint16_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {size_t numOfSharedProfiles; int * sharedProfilesIds; TYPE_1__* portsMapping; } ;
typedef TYPE_2__ t_FmPcdPlcr ;
struct TYPE_6__ {TYPE_2__* p_FmPcdPlcr; } ;
typedef TYPE_3__ t_FmPcd ;
typedef int t_Error ;
typedef int e_FmPcdProfileTypeSelection ;
struct TYPE_4__ {size_t numOfProfiles; size_t profilesBase; scalar_t__ h_FmPort; } ;


 int E_INVALID_SELECTION ;
 int E_INVALID_STATE ;
 int E_OK ;
 size_t FM_MAX_NUM_OF_PORTS ;
 int MAJOR ;
 int RETURN_ERROR (int ,int ,char*) ;



t_Error FmPcdPlcrGetAbsoluteIdByProfileParams(t_Handle h_FmPcd,
                                              e_FmPcdProfileTypeSelection profileType,
                                              t_Handle h_FmPort,
                                              uint16_t relativeProfile,
                                              uint16_t *p_AbsoluteId)
{
    t_FmPcd *p_FmPcd = (t_FmPcd*)h_FmPcd;
    t_FmPcdPlcr *p_FmPcdPlcr = p_FmPcd->p_FmPcdPlcr;
    uint8_t i;

    switch (profileType)
    {
        case 129:

            for (i=0;i<FM_MAX_NUM_OF_PORTS;i++)
                if (p_FmPcd->p_FmPcdPlcr->portsMapping[i].h_FmPort == h_FmPort)
                    break;
            if (i == FM_MAX_NUM_OF_PORTS)
                RETURN_ERROR(MAJOR, E_INVALID_STATE , ("Invalid port handle."));

            if (!p_FmPcd->p_FmPcdPlcr->portsMapping[i].numOfProfiles)
                RETURN_ERROR(MAJOR, E_INVALID_SELECTION , ("Port has no allocated profiles"));
            if (relativeProfile >= p_FmPcd->p_FmPcdPlcr->portsMapping[i].numOfProfiles)
                RETURN_ERROR(MAJOR, E_INVALID_SELECTION , ("Profile id is out of range"));
            *p_AbsoluteId = (uint16_t)(p_FmPcd->p_FmPcdPlcr->portsMapping[i].profilesBase + relativeProfile);
            break;
        case 128:
            if (relativeProfile >= p_FmPcdPlcr->numOfSharedProfiles)
                RETURN_ERROR(MAJOR, E_INVALID_SELECTION , ("Profile id is out of range"));
            *p_AbsoluteId = (uint16_t)(p_FmPcdPlcr->sharedProfilesIds[relativeProfile]);
            break;
        default:
            RETURN_ERROR(MAJOR, E_INVALID_SELECTION, ("Invalid policer profile type"));
    }

    return E_OK;
}
