
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* OPENSSL_sparcv9cap_P ;
 int SPARCV9_BLK ;
 int SPARCV9_TICK_PRIVILEGED ;
 size_t _sparcv9_vis1_instrument_bus2 (unsigned int*,size_t,size_t) ;

size_t OPENSSL_instrument_bus2(unsigned int *out, size_t cnt, size_t max)
{
    if ((OPENSSL_sparcv9cap_P[0] & (SPARCV9_TICK_PRIVILEGED | SPARCV9_BLK)) ==
        SPARCV9_BLK)
        return _sparcv9_vis1_instrument_bus2(out, cnt, max);
    else
        return 0;
}
