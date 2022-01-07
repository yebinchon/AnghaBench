
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STRstatus ;
 int _mcleanup () ;
 int child ;
 int getn (int ) ;
 int varval (int ) ;
 int xexit (int ) ;

void
exitstat(void)
{
    child = 1;

    xexit(getn(varval(STRstatus)));
}
