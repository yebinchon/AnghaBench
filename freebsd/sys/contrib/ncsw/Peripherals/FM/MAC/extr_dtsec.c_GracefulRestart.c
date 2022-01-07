
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_Error ;
struct dtsec_regs {struct dtsec_regs* p_MemMap; } ;
typedef struct dtsec_regs t_Dtsec ;
typedef int e_CommMode ;


 int ASSERT_COND (struct dtsec_regs*) ;
 int E_OK ;
 int e_COMM_MODE_RX ;
 int e_COMM_MODE_TX ;
 int fman_dtsec_start_rx (struct dtsec_regs*) ;
 int fman_dtsec_start_tx (struct dtsec_regs*) ;

__attribute__((used)) static t_Error GracefulRestart(t_Dtsec *p_Dtsec, e_CommMode mode)
{
    struct dtsec_regs *p_MemMap;

    ASSERT_COND(p_Dtsec);
    p_MemMap = p_Dtsec->p_MemMap;
    ASSERT_COND(p_MemMap);


    if (mode & e_COMM_MODE_TX)
        fman_dtsec_start_tx(p_MemMap);

    if (mode & e_COMM_MODE_RX)
        fman_dtsec_start_rx(p_MemMap);

    return E_OK;
}
