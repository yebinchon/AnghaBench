
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ t_Handle ;
struct TYPE_5__ {TYPE_1__* intrMng; } ;
typedef TYPE_2__ t_FmMacsec ;
typedef int e_FmMacsecEventModules ;
typedef int e_FmIntrType ;
struct TYPE_4__ {int * h_SrcHandle; int * f_Isr; } ;


 int ASSERT_COND (int) ;
 int E_INVALID_HANDLE ;
 int GET_MACSEC_MODULE_EVENT (int ,size_t,int ,size_t) ;
 int SANITY_CHECK_RETURN (TYPE_2__*,int ) ;
 size_t e_FM_MACSEC_EV_DUMMY_LAST ;

void FmMacsecUnregisterIntr(t_Handle h_FmMacsec,
                            e_FmMacsecEventModules module,
                            uint8_t modId,
                            e_FmIntrType intrType)
{
    t_FmMacsec *p_FmMacsec = (t_FmMacsec*)h_FmMacsec;
    uint8_t event= 0;

    SANITY_CHECK_RETURN(p_FmMacsec, E_INVALID_HANDLE);

    GET_MACSEC_MODULE_EVENT(module, modId,intrType, event);

    ASSERT_COND(event != e_FM_MACSEC_EV_DUMMY_LAST);
    p_FmMacsec->intrMng[event].f_Isr = ((void*)0);
    p_FmMacsec->intrMng[event].h_SrcHandle = ((void*)0);
}
