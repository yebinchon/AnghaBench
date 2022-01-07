
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ committedInfoRate; scalar_t__ peakOrExcessInfoRate; int committedBurstSize; int peakOrExcessBurstSize; int rateMode; } ;
typedef TYPE_1__ t_FmPcdPlcrNonPassthroughAlgParams ;


 int CalcFPP (int) ;
 int E_INVALID_SELECTION ;
 int GetInfoRateReg (int ,scalar_t__,int,int,int*,int*) ;
 int MAJOR ;
 int REPORT_ERROR (int ,int ,char*) ;

__attribute__((used)) static void CalcRates(uint32_t bitFor1Micro,
                      t_FmPcdPlcrNonPassthroughAlgParams *p_NonPassthroughAlgParam,
                      uint32_t *cir,
                      uint32_t *cbs,
                      uint32_t *pir_eir,
                      uint32_t *pbs_ebs,
                      uint32_t *fpp)
{
    uint64_t integer, fraction;
    uint32_t temp, tsuInTenthNanos;
    uint8_t fppShift=0;


    tsuInTenthNanos = (uint32_t)(1000*10/(1 << bitFor1Micro));
    if (p_NonPassthroughAlgParam->committedInfoRate > p_NonPassthroughAlgParam->peakOrExcessInfoRate)
        GetInfoRateReg(p_NonPassthroughAlgParam->rateMode, p_NonPassthroughAlgParam->committedInfoRate, tsuInTenthNanos, 0, &integer, &fraction);
    else
        GetInfoRateReg(p_NonPassthroughAlgParam->rateMode, p_NonPassthroughAlgParam->peakOrExcessInfoRate, tsuInTenthNanos, 0, &integer, &fraction);



    temp = (uint32_t)((integer<<16) & 0x00000000FFFFFFFF);





    if (temp != 0)
    {
        while ((temp & 0x80000000) == 0)
        {
            temp = temp << 1;
            fppShift++;
        }
        if (fppShift > 15)
        {
            REPORT_ERROR(MAJOR, E_INVALID_SELECTION, ("timeStampPeriod to Information rate ratio is too small"));
            return;
        }
    }
    else
    {
        temp = (uint32_t)fraction;
        if (!temp)

            fppShift = 31;
        else
        {


            fppShift=16;



            while ((temp & 0x8000) == 0)
            {
                temp = temp << 1;
                fppShift++;
            }
        }
    }





    GetInfoRateReg(p_NonPassthroughAlgParam->rateMode, p_NonPassthroughAlgParam->committedInfoRate, tsuInTenthNanos, fppShift, &integer, &fraction);
    *cir = (uint32_t)(integer << 16 | (fraction & 0xFFFF));
    GetInfoRateReg(p_NonPassthroughAlgParam->rateMode, p_NonPassthroughAlgParam->peakOrExcessInfoRate, tsuInTenthNanos, fppShift, &integer, &fraction);
    *pir_eir = (uint32_t)(integer << 16 | (fraction & 0xFFFF));

    *cbs = p_NonPassthroughAlgParam->committedBurstSize;
    *pbs_ebs = p_NonPassthroughAlgParam->peakOrExcessBurstSize;





    *fpp = CalcFPP(fppShift);
}
