
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* posix_spawnattr_t ;
typedef int pid_t ;
struct TYPE_3__ {int sa_pgroup; } ;



int
posix_spawnattr_getpgroup(const posix_spawnattr_t * __restrict sa,
    pid_t * __restrict pgroup)
{
 *pgroup = (*sa)->sa_pgroup;
 return (0);
}
