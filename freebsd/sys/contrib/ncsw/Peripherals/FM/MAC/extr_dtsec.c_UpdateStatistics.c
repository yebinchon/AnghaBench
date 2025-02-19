
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int tdrp; int txpf; int tbca; int tmca; int tpkt; int tbyt; int tfcs; int rdrp; int rjbr; int rfrg; int rovr; int rund; int rcse; int rcde; int rflr; int raln; int rxpf; int rbca; int rmca; int rpkt; int rbyt; int trmgv; int trmax; int tr1k; int tr511; int tr255; int tr127; int tr64; } ;
struct TYPE_5__ {TYPE_1__ internalStatistics; int p_MemMap; } ;
typedef TYPE_2__ t_Dtsec ;


 int CAR1_RALN ;
 int CAR1_RBCA ;
 int CAR1_RBYT ;
 int CAR1_RCDE ;
 int CAR1_RCSE ;
 int CAR1_RDRP ;
 int CAR1_RFLR ;
 int CAR1_RFRG ;
 int CAR1_RJBR ;
 int CAR1_RMCA ;
 int CAR1_ROVR ;
 int CAR1_RPKT ;
 int CAR1_RUND ;
 int CAR1_RXPF ;
 int CAR1_TR127 ;
 int CAR1_TR255 ;
 int CAR1_TR511 ;
 int CAR1_TR64 ;
 int CAR1_TRK1 ;
 int CAR1_TRMAX ;
 int CAR1_TRMGV ;
 int CAR2_TBCA ;
 int CAR2_TBYT ;
 int CAR2_TDRP ;
 int CAR2_TFCS ;
 int CAR2_TMCA ;
 int CAR2_TPKT ;
 int CAR2_TXPF ;
 scalar_t__ VAL12BIT ;
 scalar_t__ VAL16BIT ;
 scalar_t__ VAL22BIT ;
 scalar_t__ VAL32BIT ;
 int fman_dtsec_get_clear_carry_regs (int ,int*,int*) ;

__attribute__((used)) static void UpdateStatistics(t_Dtsec *p_Dtsec)
{
    uint32_t car1, car2;

    fman_dtsec_get_clear_carry_regs(p_Dtsec->p_MemMap, &car1, &car2);

    if (car1)
    {
        if (car1 & CAR1_TR64)
            p_Dtsec->internalStatistics.tr64 += VAL22BIT;
        if (car1 & CAR1_TR127)
            p_Dtsec->internalStatistics.tr127 += VAL22BIT;
        if (car1 & CAR1_TR255)
            p_Dtsec->internalStatistics.tr255 += VAL22BIT;
        if (car1 & CAR1_TR511)
            p_Dtsec->internalStatistics.tr511 += VAL22BIT;
        if (car1 & CAR1_TRK1)
            p_Dtsec->internalStatistics.tr1k += VAL22BIT;
        if (car1 & CAR1_TRMAX)
            p_Dtsec->internalStatistics.trmax += VAL22BIT;
        if (car1 & CAR1_TRMGV)
            p_Dtsec->internalStatistics.trmgv += VAL22BIT;
        if (car1 & CAR1_RBYT)
            p_Dtsec->internalStatistics.rbyt += (uint64_t)VAL32BIT;
        if (car1 & CAR1_RPKT)
            p_Dtsec->internalStatistics.rpkt += VAL22BIT;
        if (car1 & CAR1_RMCA)
            p_Dtsec->internalStatistics.rmca += VAL22BIT;
        if (car1 & CAR1_RBCA)
            p_Dtsec->internalStatistics.rbca += VAL22BIT;
        if (car1 & CAR1_RXPF)
            p_Dtsec->internalStatistics.rxpf += VAL16BIT;
        if (car1 & CAR1_RALN)
            p_Dtsec->internalStatistics.raln += VAL16BIT;
        if (car1 & CAR1_RFLR)
            p_Dtsec->internalStatistics.rflr += VAL16BIT;
        if (car1 & CAR1_RCDE)
            p_Dtsec->internalStatistics.rcde += VAL16BIT;
        if (car1 & CAR1_RCSE)
            p_Dtsec->internalStatistics.rcse += VAL16BIT;
        if (car1 & CAR1_RUND)
            p_Dtsec->internalStatistics.rund += VAL16BIT;
        if (car1 & CAR1_ROVR)
            p_Dtsec->internalStatistics.rovr += VAL16BIT;
        if (car1 & CAR1_RFRG)
            p_Dtsec->internalStatistics.rfrg += VAL16BIT;
        if (car1 & CAR1_RJBR)
            p_Dtsec->internalStatistics.rjbr += VAL16BIT;
        if (car1 & CAR1_RDRP)
            p_Dtsec->internalStatistics.rdrp += VAL16BIT;
    }
    if (car2)
    {
        if (car2 & CAR2_TFCS)
            p_Dtsec->internalStatistics.tfcs += VAL12BIT;
        if (car2 & CAR2_TBYT)
            p_Dtsec->internalStatistics.tbyt += (uint64_t)VAL32BIT;
        if (car2 & CAR2_TPKT)
            p_Dtsec->internalStatistics.tpkt += VAL22BIT;
        if (car2 & CAR2_TMCA)
            p_Dtsec->internalStatistics.tmca += VAL22BIT;
        if (car2 & CAR2_TBCA)
            p_Dtsec->internalStatistics.tbca += VAL22BIT;
        if (car2 & CAR2_TXPF)
            p_Dtsec->internalStatistics.txpf += VAL16BIT;
        if (car2 & CAR2_TDRP)
            p_Dtsec->internalStatistics.tdrp += VAL16BIT;
    }
}
