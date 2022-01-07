
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
typedef scalar_t__ HAL_BOOL ;


 int AR9300_BCHAN_UNUSED ;

__attribute__((used)) static inline u_int16_t
fbin2freq(u_int8_t fbin, HAL_BOOL is_2ghz)
{




    if (fbin == AR9300_BCHAN_UNUSED)
    {
        return fbin;
    }

    return (u_int16_t)((is_2ghz) ? (2300 + fbin) : (4800 + 5 * fbin));
}
