
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 scalar_t__ print_exit ;
 int print_ver (int *,int *,int ,int) ;
 int stderr ;
 int stdout ;

void
optionPrintVersion(tOptions * opts, tOptDesc * od)
{
    print_ver(opts, od, print_exit ? stderr : stdout, 1);
}
