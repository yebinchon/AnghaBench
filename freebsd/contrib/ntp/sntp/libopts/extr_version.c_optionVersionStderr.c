
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tOptions ;
typedef int tOptDesc ;


 int print_ver (int *,int *,int ,int) ;
 int stderr ;

void
optionVersionStderr(tOptions * opts, tOptDesc * od)
{
    print_ver(opts, od, stderr, 1);
}
