
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__ pthread_once_t ;


 scalar_t__ PTHREAD_DONE_INIT ;

__attribute__((used)) static int
_libc_once(pthread_once_t *once_control, void (*init_routine)(void))
{

 if (once_control->state == PTHREAD_DONE_INIT)
  return (0);
 init_routine();
 once_control->state = PTHREAD_DONE_INIT;
 return (0);
}
