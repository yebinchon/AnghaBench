
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_QmDcPortalParams ;
typedef int * t_Handle ;
typedef int t_Error ;
typedef int * e_DpaaDcPortal ;


 int E_NOT_SUPPORTED ;
 int INFO ;
 int RETURN_ERROR (int ,int ,char*) ;
 int UNUSED (int *) ;

t_Error QM_ConfigErrorRejectionNotificationDest(t_Handle h_Qm, e_DpaaDcPortal id, t_QmDcPortalParams *p_Params)
{
    UNUSED(h_Qm); UNUSED(id); UNUSED(p_Params);

    RETURN_ERROR(INFO, E_NOT_SUPPORTED, ("Only default ERN destination available."));
}
