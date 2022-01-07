
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_QmPortal ;
typedef int t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;
typedef int e_QmPortalPollSource ;


 int E_INVALID_HANDLE ;
 int QM_PORTAL_Poll (int *,int ) ;
 int * QmGetPortalHandle (int *) ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;

t_Error QM_Poll(t_Handle h_Qm, e_QmPortalPollSource source)
{
    t_Qm *p_Qm = (t_Qm *)h_Qm;
    t_QmPortal *p_QmPortal;

    SANITY_CHECK_RETURN_ERROR(p_Qm, E_INVALID_HANDLE);
    p_QmPortal = QmGetPortalHandle(p_Qm);
    SANITY_CHECK_RETURN_ERROR(p_QmPortal, E_INVALID_HANDLE);

    return QM_PORTAL_Poll(p_QmPortal, source);
}
