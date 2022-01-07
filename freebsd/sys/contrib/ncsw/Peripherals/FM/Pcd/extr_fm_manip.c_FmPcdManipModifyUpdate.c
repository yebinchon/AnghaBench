
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_3__ {int opcode; int shadowUpdateParams; int h_Frag; } ;
typedef TYPE_1__ t_FmPcdManip ;
typedef int t_Error ;


 int E_INVALID_STATE ;
 int E_OK ;
 int HMAN_OC_CAPWAP_RMV_DTLS_IF_EXIST ;
 int HMAN_OC_INSRT_HDR_BY_TEMPL_N_OR_FRAG_AFTER ;
 int HMAN_OC_MV_INT_FRAME_HDR_FROM_FRM_TO_BUFFER_PREFFIX ;
 int MAJOR ;
 int NUM_OF_TASKS ;
 int OFFSET_OF_DATA ;
 int OFFSET_OF_PR ;
 int RETURN_ERROR (int ,int ,char*) ;
 int UNUSED (int) ;
 int UpdateModifyCapwapFragmenation (TYPE_1__*,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static t_Error FmPcdManipModifyUpdate(t_Handle h_Manip, t_Handle h_Ad,
                                      bool validate, int level,
                                      t_Handle h_FmTree)
{

    t_FmPcdManip *p_Manip = (t_FmPcdManip *)h_Manip;
    t_Error err = E_OK;

    UNUSED(level);

    switch (p_Manip->opcode)
    {
        default:
            return E_OK;
    }

    return err;
}
