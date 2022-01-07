
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ptid_t ;
struct TYPE_2__ {int h; } ;


 int FALSE ;
 int PIDGET (int ) ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (int ,int ) ;
 TYPE_1__* thread_rec (int,int) ;

__attribute__((used)) static int
win32_child_thread_alive (ptid_t ptid)
{
  int pid = PIDGET (ptid);

  return WaitForSingleObject (thread_rec (pid, FALSE)->h, 0) == WAIT_OBJECT_0 ?
    FALSE : TRUE;
}
