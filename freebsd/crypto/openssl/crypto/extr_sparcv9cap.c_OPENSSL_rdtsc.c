
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int* OPENSSL_sparcv9cap_P ;
 int SPARCV9_TICK_PRIVILEGED ;
 int _sparcv9_rdtick () ;
 int gethrtime () ;

uint32_t OPENSSL_rdtsc(void)
{
    if (OPENSSL_sparcv9cap_P[0] & SPARCV9_TICK_PRIVILEGED)



        return 0;

    else
        return _sparcv9_rdtick();
}
