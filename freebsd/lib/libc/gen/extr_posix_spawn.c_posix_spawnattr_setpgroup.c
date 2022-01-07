
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* posix_spawnattr_t ;
typedef int pid_t ;
struct TYPE_3__ {int sa_pgroup; } ;



int
posix_spawnattr_setpgroup(posix_spawnattr_t *sa, pid_t pgroup)
{
 (*sa)->sa_pgroup = pgroup;
 return (0);
}
