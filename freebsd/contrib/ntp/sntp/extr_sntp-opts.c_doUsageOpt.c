
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 int SNTP_EXIT_SUCCESS ;
 int exit (int) ;
 int optionUsage (int *,int) ;
 int sntpOptions ;

__attribute__((used)) static void
doUsageOpt(tOptions * opts, tOptDesc * od)
{
    int ex_code;
    ex_code = SNTP_EXIT_SUCCESS;
    optionUsage(&sntpOptions, ex_code);

    exit(1);
    (void)opts;
    (void)od;
}
