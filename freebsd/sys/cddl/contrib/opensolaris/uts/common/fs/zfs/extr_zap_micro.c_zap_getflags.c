
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zap_ismicro; } ;
typedef TYPE_1__ zap_t ;
typedef int uint64_t ;
struct TYPE_6__ {int zap_flags; } ;


 TYPE_3__* zap_f_phys (TYPE_1__*) ;

uint64_t
zap_getflags(zap_t *zap)
{
 if (zap->zap_ismicro)
  return (0);
 return (zap_f_phys(zap)->zap_flags);
}
