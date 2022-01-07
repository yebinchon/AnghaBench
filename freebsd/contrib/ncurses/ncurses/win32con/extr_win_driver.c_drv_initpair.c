
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pairs; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;


 int AssertTCB () ;
 int MapColor (int,int) ;
 int NUMPAIRS ;
 TYPE_1__* PropOf (int *) ;
 int SetSP () ;

__attribute__((used)) static void
drv_initpair(TERMINAL_CONTROL_BLOCK * TCB,
      int pair,
      int f,
      int b)
{
    SCREEN *sp;

    AssertTCB();
    SetSP();

    if ((pair > 0) && (pair < NUMPAIRS) && (f >= 0) && (f < 8)
 && (b >= 0) && (b < 8)) {
 PropOf(TCB)->pairs[pair] = MapColor(1, f) | MapColor(0, b);
    }
}
