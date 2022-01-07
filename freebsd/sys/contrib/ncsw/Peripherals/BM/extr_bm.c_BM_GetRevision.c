
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_Handle ;
typedef int t_Error ;
typedef int t_BmRevisionInfo ;
typedef int t_Bm ;


 int BmGetRevision (int *,int *) ;
 int E_INVALID_HANDLE ;
 int E_NULL_POINTER ;
 int SANITY_CHECK_RETURN_ERROR (int *,int ) ;

t_Error BM_GetRevision(t_Handle h_Bm, t_BmRevisionInfo *p_BmRevisionInfo)
{
    t_Bm *p_Bm = (t_Bm*)h_Bm;

    SANITY_CHECK_RETURN_ERROR(p_Bm, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(p_BmRevisionInfo, E_NULL_POINTER);

    return BmGetRevision(p_Bm, p_BmRevisionInfo);
}
