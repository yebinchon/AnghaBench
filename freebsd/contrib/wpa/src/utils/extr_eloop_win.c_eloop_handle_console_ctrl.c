
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int signaled; } ;
struct TYPE_4__ {int term_event; TYPE_1__ term_signal; int signaled; } ;
typedef int DWORD ;
typedef int BOOL ;




 int FALSE ;
 int SetEvent (int ) ;
 int TRUE ;
 TYPE_2__ eloop ;

__attribute__((used)) static BOOL eloop_handle_console_ctrl(DWORD type)
{
 switch (type) {
 case 128:
 case 129:
  eloop.signaled++;
  eloop.term_signal.signaled++;
  SetEvent(eloop.term_event);
  return TRUE;
 default:
  return FALSE;
 }
}
