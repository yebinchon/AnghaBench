
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int kvm_walk_pages_cb_t ;
struct TYPE_6__ {TYPE_1__* arch; } ;
typedef TYPE_2__ kvm_t ;
struct TYPE_5__ {int (* ka_walk_pages ) (TYPE_2__*,int *,void*) ;} ;


 int stub1 (TYPE_2__*,int *,void*) ;

int
kvm_walk_pages(kvm_t *kd, kvm_walk_pages_cb_t *cb, void *closure)
{

 if (kd->arch->ka_walk_pages == ((void*)0))
  return (0);

 return (kd->arch->ka_walk_pages(kd, cb, closure));
}
