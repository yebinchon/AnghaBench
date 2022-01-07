
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_QmRevisionInfo ;
typedef int t_Qm ;
typedef scalar_t__ t_Handle ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 int QmGetRevision (int *,int *) ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;

t_Error QM_GetRevision(t_Handle h_Qm, t_QmRevisionInfo *p_QmRevisionInfo)
{
    t_Qm *p_Qm = (t_Qm*)h_Qm;

    SANITY_CHECK_RETURN_ERROR(p_Qm, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_QmRevisionInfo, E_NULL_POINTER);

    return QmGetRevision(p_Qm, p_QmRevisionInfo);
}
