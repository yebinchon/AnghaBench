
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int ExitVal ;
 int mailerr (int *,char*) ;
 int sm_exit (int ) ;

void
usage()
{
 ExitVal = EX_USAGE;



 mailerr(((void*)0), "usage: mail.local [-7] [-B] [-b] [-d] [-l] [-s] [-f from|-r from] [-h filename] user ...");

 sm_exit(ExitVal);
}
