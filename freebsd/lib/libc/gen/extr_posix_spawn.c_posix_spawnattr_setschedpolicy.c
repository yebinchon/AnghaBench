
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* posix_spawnattr_t ;
struct TYPE_3__ {int sa_schedpolicy; } ;



int
posix_spawnattr_setschedpolicy(posix_spawnattr_t *sa, int schedpolicy)
{
 (*sa)->sa_schedpolicy = schedpolicy;
 return (0);
}
