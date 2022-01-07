
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct pthread {TYPE_1__* wake_addr; } ;
struct TYPE_2__ {scalar_t__ value; } ;


 int _thr_umtx_timedwait_uint (scalar_t__*,int ,int,struct timespec const*,int ) ;

int
_thr_sleep(struct pthread *curthread, int clockid,
 const struct timespec *abstime)
{

 if (curthread->wake_addr->value != 0)
  return (0);

 return _thr_umtx_timedwait_uint(&curthread->wake_addr->value, 0,
                 clockid, abstime, 0);
}
