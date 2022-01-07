
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* arch; } ;
typedef TYPE_2__ kvm_t ;
struct TYPE_6__ {int (* ka_native ) (TYPE_2__*) ;} ;


 scalar_t__ ISALIVE (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

int
kvm_native(kvm_t *kd)
{

 if (ISALIVE(kd))
  return (1);
 return (kd->arch->ka_native(kd));
}
