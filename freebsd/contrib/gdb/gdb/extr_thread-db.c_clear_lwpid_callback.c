
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {TYPE_1__* private; } ;
struct TYPE_2__ {scalar_t__ ti_valid; scalar_t__ th_valid; } ;



__attribute__((used)) static int
clear_lwpid_callback (struct thread_info *thread, void *dummy)
{




  thread->private->th_valid = 0;
  thread->private->ti_valid = 0;

  return 0;
}
