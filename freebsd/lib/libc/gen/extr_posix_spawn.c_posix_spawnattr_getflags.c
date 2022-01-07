
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* posix_spawnattr_t ;
struct TYPE_3__ {short sa_flags; } ;



int
posix_spawnattr_getflags(const posix_spawnattr_t * __restrict sa,
    short * __restrict flags)
{
 *flags = (*sa)->sa_flags;
 return (0);
}
