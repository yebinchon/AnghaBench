
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sched_param {int dummy; } ;
typedef TYPE_1__* posix_spawnattr_t ;
struct TYPE_3__ {struct sched_param sa_schedparam; } ;



int
posix_spawnattr_getschedparam(const posix_spawnattr_t * __restrict sa,
    struct sched_param * __restrict schedparam)
{
 *schedparam = (*sa)->sa_schedparam;
 return (0);
}
