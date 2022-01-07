
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct vmstate {int dummy; } ;
struct TYPE_5__ {struct vmstate* vmst; } ;
typedef TYPE_1__ kvm_t ;


 scalar_t__ _kvm_malloc (TYPE_1__*,int) ;
 int powerpc_maphdrs (TYPE_1__*) ;

__attribute__((used)) static int
_powerpc64_initvtop(kvm_t *kd)
{

 kd->vmst = (struct vmstate *)_kvm_malloc(kd, sizeof(*kd->vmst));
 if (kd->vmst == ((void*)0))
  return (-1);

 if (powerpc_maphdrs(kd) == -1)
  return (-1);

 return (0);
}
