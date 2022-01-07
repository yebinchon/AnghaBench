
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 int SetSP () ;

__attribute__((used)) static void
drv_setfilter(TERMINAL_CONTROL_BLOCK * TCB)
{
    SCREEN *sp;

    AssertTCB();
    SetSP();
}
