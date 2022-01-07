
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int fqidBase; } ;
typedef TYPE_1__ t_QmFqr ;
typedef scalar_t__ t_Handle ;


 int E_INVALID_HANDLE ;
 int SANITY_CHECK_RETURN_VALUE (TYPE_1__*,int ,int ) ;

uint32_t QM_FQR_GetFqid(t_Handle h_QmFqr)
{
    t_QmFqr *p_QmFqr = (t_QmFqr *)h_QmFqr;

    SANITY_CHECK_RETURN_VALUE(p_QmFqr, E_INVALID_HANDLE, 0);

    return p_QmFqr->fqidBase;
}
