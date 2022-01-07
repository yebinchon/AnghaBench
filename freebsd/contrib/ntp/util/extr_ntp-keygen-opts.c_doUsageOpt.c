
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 int NTP_KEYGEN_EXIT_SUCCESS ;
 int exit (int) ;
 int ntp_keygenOptions ;
 int optionUsage (int *,int) ;

__attribute__((used)) static void
doUsageOpt(tOptions * opts, tOptDesc * od)
{
    int ex_code;
    ex_code = NTP_KEYGEN_EXIT_SUCCESS;
    optionUsage(&ntp_keygenOptions, ex_code);

    exit(1);
    (void)opts;
    (void)od;
}
