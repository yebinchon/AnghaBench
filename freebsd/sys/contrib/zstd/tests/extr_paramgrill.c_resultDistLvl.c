
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cSpeed; double cSize; } ;
typedef TYPE_1__ BMK_benchResult_t ;


 double g_ratioMultiplier ;

__attribute__((used)) static double
resultDistLvl(const BMK_benchResult_t result1, const BMK_benchResult_t lvlRes)
{
    double normalizedCSpeedGain1 = (result1.cSpeed / lvlRes.cSpeed) - 1;
    double normalizedRatioGain1 = ((double)lvlRes.cSize / result1.cSize) - 1;
    if(normalizedRatioGain1 < 0 || normalizedCSpeedGain1 < 0) {
        return 0.0;
    }
    return normalizedRatioGain1 * g_ratioMultiplier + normalizedCSpeedGain1;
}
