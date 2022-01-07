
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int opcode; int ownerTmp; int h_Frag; } ;
typedef TYPE_1__ t_FmPcdManip ;
typedef int t_Error ;


 int E_INVALID_HANDLE ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int FmPcdCcGetNumOfKeys (scalar_t__) ;
 int FmPcdCcGetOffset (scalar_t__) ;
 int HMAN_OC_CAPWAP_INDEXED_STATS ;
 int HMAN_OC_CAPWAP_RMV_DTLS_IF_EXIST ;
 int MAJOR ;
 char* NO_MSG ;
 int RETURN_ERROR (int ,int ,char*) ;
 int SANITY_CHECK_RETURN_ERROR (scalar_t__,int ) ;
 int UpdateManipIc (scalar_t__,int ) ;

t_Error FmPcdManipCheckParamsWithCcNodeParams(t_Handle h_Manip,
                                              t_Handle h_FmPcdCcNode)
{
    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;
    t_Error err = E_OK;

    SANITY_CHECK_RETURN_ERROR(h_Manip, E_INVALID_HANDLE);
    SANITY_CHECK_RETURN_ERROR(h_FmPcdCcNode, E_INVALID_HANDLE);

    switch (p_Manip->opcode)
    {
        default:
            break;
    }

    return err;
}
