
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int t_Error ;
struct TYPE_3__ {int majorRev; } ;
struct TYPE_4__ {TYPE_1__ fmRevInfo; } ;
struct dtsec_regs {TYPE_2__ fmMacControllerDriver; struct dtsec_regs* p_MemMap; } ;
typedef struct dtsec_regs t_Dtsec ;
typedef int e_CommMode ;


 int ASSERT_COND (struct dtsec_regs*) ;
 int DBG (int ,char*) ;
 int E_OK ;
 int INFO ;
 int XX_UDelay (int) ;
 int e_COMM_MODE_RX ;
 int e_COMM_MODE_TX ;
 int fman_dtsec_stop_rx (struct dtsec_regs*) ;
 int fman_dtsec_stop_tx (struct dtsec_regs*) ;

__attribute__((used)) static t_Error GracefulStop(t_Dtsec *p_Dtsec, e_CommMode mode)
{
    struct dtsec_regs *p_MemMap;

    ASSERT_COND(p_Dtsec);

    p_MemMap = p_Dtsec->p_MemMap;
    ASSERT_COND(p_MemMap);


    if (mode & e_COMM_MODE_RX)
    {
        fman_dtsec_stop_rx(p_MemMap);
    }

    if (mode & e_COMM_MODE_TX)







        fman_dtsec_stop_tx(p_MemMap);



    return E_OK;
}
