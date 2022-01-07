
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FSHTTY ;
 int STR1 ;
 int STRstatus ;
 int VAR_READWRITE ;
 int btoeof () ;
 scalar_t__ child ;
 scalar_t__ didfds ;
 scalar_t__ exiterr ;
 int exitset ;
 int setcopy (int ,int ,int ) ;
 int tcsetpgrp (int ,scalar_t__) ;
 scalar_t__ tpgrp ;
 int xexit (int) ;

void
fixerror(void)
{
    didfds = 0;



    if (!exitset || exiterr || child)
 xexit(1);





    btoeof();

    setcopy(STRstatus, STR1, VAR_READWRITE);




}
