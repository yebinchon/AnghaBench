
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dwProcessId; } ;


 int CHECK (int ) ;
 int CTRL_C_EVENT ;
 int DEBUG_EVENTS (char*) ;
 int GenerateConsoleCtrlEvent (int ,int ) ;
 TYPE_1__ current_event ;
 int registers_changed () ;

__attribute__((used)) static void
child_stop (void)
{
  DEBUG_EVENTS (("gdb: GenerateConsoleCtrlEvent (CTRLC_EVENT, 0)\n"));
  CHECK (GenerateConsoleCtrlEvent (CTRL_C_EVENT, current_event.dwProcessId));
  registers_changed ();
}
