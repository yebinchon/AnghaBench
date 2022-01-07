
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OPENSSL_ppccap_P ;
 int OPENSSL_rdtsc_mfspr268 () ;
 int OPENSSL_rdtsc_mftb () ;
 int PPC_MFSPR268 ;
 int PPC_MFTB ;

uint32_t OPENSSL_rdtsc(void)
{
    if (OPENSSL_ppccap_P & PPC_MFTB)
        return OPENSSL_rdtsc_mftb();
    else if (OPENSSL_ppccap_P & PPC_MFSPR268)
        return OPENSSL_rdtsc_mfspr268();
    else
        return 0;
}
