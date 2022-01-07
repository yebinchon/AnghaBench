
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * t_Handle ;
typedef int t_FmPcdCcNodeParams ;
typedef int t_FmPcdCcNode ;
typedef int t_Error ;


 int DBG (int ,char*) ;

 int E_INVALID_HANDLE ;
 int E_NO_MEMORY ;
 int E_NULL_POINTER ;

 int GET_ERROR_TYPE (int ) ;
 int MAJOR ;
 int MatchTableSet (int *,int *,int *) ;
 char* NO_MSG ;
 int REPORT_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_VALUE (int *,int ,int *) ;
 int TRACE ;
 scalar_t__ XX_Malloc (int) ;
 int memset (int *,int ,int) ;

t_Handle FM_PCD_MatchTableSet(t_Handle h_FmPcd,
                              t_FmPcdCcNodeParams *p_CcNodeParam)
{
    t_FmPcdCcNode *p_CcNode;
    t_Error err;

    SANITY_CHECK_RETURN_VALUE(h_FmPcd, E_INVALID_HANDLE, ((void*)0));
    SANITY_CHECK_RETURN_VALUE(p_CcNodeParam, E_NULL_POINTER, ((void*)0));

    p_CcNode = (t_FmPcdCcNode*)XX_Malloc(sizeof(t_FmPcdCcNode));
    if (!p_CcNode)
    {
        REPORT_ERROR(MAJOR, E_NO_MEMORY, ("No memory"));
        return ((void*)0);
    }
    memset(p_CcNode, 0, sizeof(t_FmPcdCcNode));

    err = MatchTableSet(h_FmPcd, p_CcNode, p_CcNodeParam);

    switch(GET_ERROR_TYPE(err)
) {
        case 128:
        break;

        case 129:
        DBG(TRACE, ("E_BUSY error"));
        return ((void*)0);

        default:
        REPORT_ERROR(MAJOR, err, NO_MSG);
        return ((void*)0);
    }

    return p_CcNode;
}
