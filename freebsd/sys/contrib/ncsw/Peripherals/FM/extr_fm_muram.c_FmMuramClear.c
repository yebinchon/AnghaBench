
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ t_Handle ;
struct TYPE_2__ {int size; int baseAddr; } ;
typedef TYPE_1__ t_FmMuram ;


 int E_INVALID_HANDLE ;
 int IOMemSet32 (int ,int ,int ) ;
 int SANITY_CHECK_RETURN (scalar_t__,int ) ;
 int UINT_TO_PTR (int ) ;

void FmMuramClear(t_Handle h_FmMuram)
{
    t_FmMuram *p_FmMuram = ( t_FmMuram *)h_FmMuram;

    SANITY_CHECK_RETURN(h_FmMuram, E_INVALID_HANDLE);
    IOMemSet32(UINT_TO_PTR(p_FmMuram->baseAddr), 0, p_FmMuram->size);
}
