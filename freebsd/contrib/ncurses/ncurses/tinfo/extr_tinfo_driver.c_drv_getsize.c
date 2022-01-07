
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMINAL_CONTROL_BLOCK ;


 int AssertTCB () ;
 int OK ;
 int assert (int) ;
 int columns ;
 int lines ;

__attribute__((used)) static int
drv_getsize(TERMINAL_CONTROL_BLOCK * TCB, int *l, int *c)
{
    AssertTCB();
    assert(l != 0 && c != 0);
    *l = lines;
    *c = columns;
    return OK;
}
