
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lastOut; } ;
struct TYPE_5__ {scalar_t__ hdl; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;


 TYPE_3__* PropOf (TYPE_1__*) ;
 int SetConsoleActiveScreenBuffer (scalar_t__) ;

__attribute__((used)) static void
selectActiveHandle(TERMINAL_CONTROL_BLOCK * TCB)
{
    if (PropOf(TCB)->lastOut != TCB->hdl) {
 PropOf(TCB)->lastOut = TCB->hdl;
 SetConsoleActiveScreenBuffer(PropOf(TCB)->lastOut);
    }
}
