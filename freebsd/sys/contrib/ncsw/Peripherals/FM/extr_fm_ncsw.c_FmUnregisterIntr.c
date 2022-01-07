
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int t_Handle ;
struct TYPE_4__ {TYPE_1__* intrMng; } ;
typedef TYPE_2__ t_Fm ;
typedef int e_FmIntrType ;
typedef int e_FmEventModules ;
struct TYPE_3__ {int * h_SrcHandle; int f_Isr; } ;


 int ASSERT_COND (int) ;
 int GET_FM_MODULE_EVENT (int ,int ,int ,int) ;
 int UnimplementedIsr ;
 int e_FM_EV_DUMMY_LAST ;

void FmUnregisterIntr(t_Handle h_Fm,
                        e_FmEventModules module,
                        uint8_t modId,
                        e_FmIntrType intrType)
{
    t_Fm *p_Fm = (t_Fm*)h_Fm;
    int event = 0;

    ASSERT_COND(h_Fm);

    GET_FM_MODULE_EVENT(module, modId,intrType, event);
    ASSERT_COND(event < e_FM_EV_DUMMY_LAST);

    p_Fm->intrMng[event].f_Isr = UnimplementedIsr;
    p_Fm->intrMng[event].h_SrcHandle = ((void*)0);
}
