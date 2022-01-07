
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmap_invl_gen {scalar_t__ gen; } ;
struct TYPE_3__ {struct pmap_invl_gen md_invl_gen; } ;
struct TYPE_4__ {TYPE_1__ td_md; } ;


 TYPE_2__* curthread ;

__attribute__((used)) static bool
pmap_not_in_di_l(void)
{
 struct pmap_invl_gen *invl_gen;

 invl_gen = &curthread->td_md.md_invl_gen;
 return (invl_gen->gen == 0);
}
