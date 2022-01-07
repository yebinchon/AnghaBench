
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int program; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_err (TYPE_1__*,int ,char*,size_t,int ) ;
 void* calloc (size_t,int) ;
 int errno ;
 int strerror (int ) ;

void *
_kvm_malloc(kvm_t *kd, size_t n)
{
 void *p;

 if ((p = calloc(n, sizeof(char))) == ((void*)0))
  _kvm_err(kd, kd->program, "can't allocate %zu bytes: %s",
    n, strerror(errno));
 return (p);
}
