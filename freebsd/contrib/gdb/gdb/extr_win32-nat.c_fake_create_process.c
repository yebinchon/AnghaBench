
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hThread; } ;
struct TYPE_5__ {TYPE_1__ CreateThread; } ;
struct TYPE_6__ {TYPE_2__ u; int dwThreadId; int dwProcessId; } ;
typedef int DWORD ;


 int FALSE ;
 int OpenProcess (int ,int ,int ) ;
 int PROCESS_ALL_ACCESS ;
 int child_add_thread (int ,int ) ;
 TYPE_3__ current_event ;
 int current_process_handle ;
 int current_thread ;
 int main_thread_id ;

DWORD
fake_create_process (void)
{
  current_process_handle = OpenProcess (PROCESS_ALL_ACCESS, FALSE,
     current_event.dwProcessId);
  main_thread_id = current_event.dwThreadId;
  current_thread = child_add_thread (main_thread_id,
         current_event.u.CreateThread.hThread);
  return main_thread_id;
}
