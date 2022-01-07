
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_9__ {TYPE_1__* vmst; } ;
typedef TYPE_2__ kvm_t ;
typedef int kvaddr_t ;
struct TYPE_8__ {scalar_t__ pae; } ;


 scalar_t__ ISALIVE (TYPE_2__*) ;
 int _i386_vatop (TYPE_2__*,int ,int *) ;
 int _i386_vatop_pae (TYPE_2__*,int ,int *) ;
 int _kvm_err (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int
_i386_kvatop(kvm_t *kd, kvaddr_t va, off_t *pa)
{

 if (ISALIVE(kd)) {
  _kvm_err(kd, 0, "vatop called in live kernel!");
  return (0);
 }
 if (kd->vmst->pae)
  return (_i386_vatop_pae(kd, va, pa));
 else
  return (_i386_vatop(kd, va, pa));
}
