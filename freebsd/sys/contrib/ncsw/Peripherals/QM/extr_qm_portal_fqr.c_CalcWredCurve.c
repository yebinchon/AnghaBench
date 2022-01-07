
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int maxTh; int minTh; int probabilityDenominator; } ;
typedef TYPE_1__ t_QmCgWredCurve ;
typedef int t_Error ;


 int ABS (int) ;
 int ASSERT_COND (int) ;
 int E_INVALID_VALUE ;
 int E_OK ;
 int MINOR ;
 int RETURN_ERROR (int ,int ,char*) ;

__attribute__((used)) static t_Error CalcWredCurve(t_QmCgWredCurve *p_WredCurve, uint32_t *p_CurveWord)
{
    uint32_t maxP, roundDown, roundUp, tmpA, tmpN;
    uint32_t ma=0, mn=0, slope, sa=0, sn=0, pn;
    int pres = 1000;
    int gap, tmp;






     gap = (int)p_WredCurve->maxTh;
     for (tmpA=0 ; tmpA<256; tmpA++ )
         for (tmpN=0 ; tmpN<32; tmpN++ )
         {
             tmp = ABS((int)(p_WredCurve->maxTh - tmpA*(1<<tmpN)));
             if (tmp < gap)
             {
                ma = tmpA;
                mn = tmpN;
                gap = tmp;
             }
         }
     ASSERT_COND(ma <256);
     ASSERT_COND(mn <32);
     p_WredCurve->maxTh = ma*(1<<mn);

     if(p_WredCurve->maxTh <= p_WredCurve->minTh)
        RETURN_ERROR(MINOR, E_INVALID_VALUE, ("maxTh must be larger than minTh"));
     if(p_WredCurve->probabilityDenominator > 64)
        RETURN_ERROR(MINOR, E_INVALID_VALUE, ("probabilityDenominator mustn't be 1-64"));





    maxP = (uint32_t)(256*1000/p_WredCurve->probabilityDenominator);
    if (maxP % 4*pres)
    {
        roundDown = maxP + (maxP % (4*pres));
        roundUp = roundDown + 4*pres;
        if((roundUp - maxP) > (maxP - roundDown))
            maxP = roundDown;
        else
            maxP = roundUp;
    }
    maxP = maxP/pres;
    ASSERT_COND(maxP <= 256);
    pn = (uint8_t)(maxP/4 - 1);

    if(maxP >= (p_WredCurve->maxTh - p_WredCurve->minTh))
        RETURN_ERROR(MINOR, E_INVALID_VALUE, ("Due to probabilityDenominator selected, maxTh-minTh must be larger than %d", maxP));

    pres = 1000000;
    slope = maxP*pres/(p_WredCurve->maxTh - p_WredCurve->minTh);

    gap = (int)slope;
    for (tmpA=(uint32_t)(64*pres) ; tmpA<128*pres; tmpA += pres )
        for (tmpN=7 ; tmpN<64; tmpN++ )
        {
            tmp = ABS((int)(slope - tmpA/(1<<tmpN)));
            if (tmp < gap)
            {
               sa = tmpA;
               sn = tmpN;
               gap = tmp;
            }
        }
    sa = sa/pres;
    ASSERT_COND(sa<128 && sa>=64);
    ASSERT_COND(sn<64 && sn>=7);

    *p_CurveWord = ((ma << 24) |
                    (mn << 19) |
                    (sa << 12) |
                    (sn << 6) |
                    pn);

    return E_OK;
}
