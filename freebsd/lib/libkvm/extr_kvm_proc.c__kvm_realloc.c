
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int program; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_err (TYPE_1__*,int ,char*) ;
 void* reallocf (void*,size_t) ;

void *
_kvm_realloc(kvm_t *kd, void *p, size_t n)
{
 void *np;

 np = reallocf(p, n);
 if (np == ((void*)0))
  _kvm_err(kd, kd->program, "out of memory");
 return (np);
}
