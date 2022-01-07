
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {uintptr_t nvb_cur; } ;
typedef TYPE_1__ nvbuf_t ;
struct TYPE_5__ {TYPE_1__* nva_arg; } ;
typedef TYPE_2__ nv_alloc_t ;



__attribute__((used)) static void
nv_fixed_reset(nv_alloc_t *nva)
{
 nvbuf_t *nvb = nva->nva_arg;

 nvb->nvb_cur = (uintptr_t)&nvb[1];
}
