
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ e_FmPcdPlcrRateMode ;


 scalar_t__ e_FM_PCD_PLCR_BYTE_MODE ;

__attribute__((used)) static void GetInfoRateReg(e_FmPcdPlcrRateMode rateMode,
                           uint32_t rate,
                           uint64_t tsuInTenthNano,
                           uint32_t fppShift,
                           uint64_t *p_Integer,
                           uint64_t *p_Fraction)
{
    uint64_t tmp, div;

    if (rateMode == e_FM_PCD_PLCR_BYTE_MODE)
    {


        tmp = (uint64_t)rate;
        tmp *= 1000;
        tmp *= tsuInTenthNano;

        div = 1000000000;
        div *= 10;
        div *= 8;
    }
    else
    {


        tmp = (uint64_t)rate;
        tmp *= tsuInTenthNano;

        div = 1000000000;
        div *= 10;
    }
    *p_Integer = (tmp<<fppShift) / div;





    *p_Fraction = (((tmp<<fppShift)<<16) - ((*p_Integer<<16)*div)) / div;
}
