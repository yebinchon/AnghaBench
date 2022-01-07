
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_10__ {int guestId; TYPE_3__* p_FmPcdPlcr; } ;
typedef TYPE_4__ t_FmPcd ;
struct TYPE_9__ {TYPE_2__* profiles; } ;
struct TYPE_7__ {size_t allocated; int ownerId; } ;
struct TYPE_8__ {TYPE_1__ profilesMng; } ;


 int ASSERT_COND (size_t) ;
 int E_INVALID_HANDLE ;
 size_t FALSE ;
 int SANITY_CHECK_RETURN (TYPE_4__*,int ) ;

__attribute__((used)) static void FreeSharedProfiles(t_FmPcd *p_FmPcd, uint16_t numOfProfiles, uint16_t *profilesIds)
{
    uint16_t i;

    SANITY_CHECK_RETURN(p_FmPcd, E_INVALID_HANDLE);

    ASSERT_COND(numOfProfiles);

    for (i=0; i < numOfProfiles; i++)
    {
        ASSERT_COND(p_FmPcd->p_FmPcdPlcr->profiles[profilesIds[i]].profilesMng.allocated);
        p_FmPcd->p_FmPcdPlcr->profiles[profilesIds[i]].profilesMng.allocated = FALSE;
        p_FmPcd->p_FmPcdPlcr->profiles[profilesIds[i]].profilesMng.ownerId = p_FmPcd->guestId;
    }
}
