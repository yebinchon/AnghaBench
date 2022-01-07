
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pmap_t ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {int p_vmspace; } ;


 TYPE_2__* curthread ;
 scalar_t__ kernel_pmap ;
 scalar_t__ vmspace_pmap (int ) ;

__attribute__((used)) static __inline int
pmap_is_current(pmap_t pmap)
{

 return (pmap == kernel_pmap ||
  (pmap == vmspace_pmap(curthread->td_proc->p_vmspace)));
}
