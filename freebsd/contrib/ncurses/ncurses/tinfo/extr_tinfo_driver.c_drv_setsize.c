
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int OK ;
 short columns ;
 short lines ;

__attribute__((used)) static int
drv_setsize(TERMINAL_CONTROL_BLOCK * TCB, int l, int c)
{
    AssertTCB();
    lines = (short) l;
    columns = (short) c;
    return OK;
}
