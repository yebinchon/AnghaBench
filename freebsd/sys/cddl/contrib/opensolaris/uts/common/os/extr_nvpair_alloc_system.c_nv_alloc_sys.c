
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nva_arg; } ;
typedef TYPE_1__ nv_alloc_t ;


 void* kmem_alloc (size_t,int) ;

__attribute__((used)) static void *
nv_alloc_sys(nv_alloc_t *nva, size_t size)
{
 return (kmem_alloc(size, (int)(uintptr_t)nva->nva_arg));
}
