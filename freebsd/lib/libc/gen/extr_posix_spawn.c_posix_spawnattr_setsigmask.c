
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
typedef TYPE_1__* posix_spawnattr_t ;
struct TYPE_3__ {int sa_sigmask; } ;



int
posix_spawnattr_setsigmask(posix_spawnattr_t * __restrict sa,
    const sigset_t * __restrict sigmask)
{
 (*sa)->sa_sigmask = *sigmask;
 return (0);
}
