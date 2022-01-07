
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 int HALASSERT (int ) ;

__attribute__((used)) static HAL_BOOL
ar9300_invalid_stbc_cfg(int tx_chains, u_int8_t rate_code)
{
    switch (tx_chains) {
    case 0:
        return AH_TRUE;

    case 1:
        if ((rate_code < 0x80) || (rate_code > 0x87)) {
            return AH_TRUE;
        } else {
            return AH_FALSE;
        }

    case 2:
        if ((rate_code < 0x80) || (rate_code > 0x87)) {
            return AH_TRUE;
        } else {
            return AH_FALSE;
        }

    default:
        HALASSERT(0);
        break;
    }

    return AH_TRUE;
}
