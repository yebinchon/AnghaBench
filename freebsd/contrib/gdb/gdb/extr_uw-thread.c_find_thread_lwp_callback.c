
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* private; int ptid; } ;
struct TYPE_2__ {int lwpid; int stable; } ;


 int ISTID (int ) ;

__attribute__((used)) static int
find_thread_lwp_callback (struct thread_info *tp, void *data)
{
  int lwpid = (int)data;

  if (!ISTID (tp->ptid))
    return 0;
  if (!tp->private->stable)
    return 0;
  if (lwpid != tp->private->lwpid)
    return 0;


  return 1;
}
