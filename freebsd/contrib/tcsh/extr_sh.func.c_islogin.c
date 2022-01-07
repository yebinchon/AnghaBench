
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_NOTLOGIN ;
 scalar_t__ chkstop ;
 scalar_t__ loginsh ;
 int panystop (int ) ;
 scalar_t__ setintr ;
 int stderror (int ) ;

__attribute__((used)) static void
islogin(void)
{
    if (chkstop == 0 && setintr)
 panystop(0);
    if (loginsh)
 return;
    stderror(ERR_NOTLOGIN);
}
