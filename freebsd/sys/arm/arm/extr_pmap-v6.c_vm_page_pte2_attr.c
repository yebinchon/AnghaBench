
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int uint32_t ;
struct TYPE_4__ {int pat_mode; } ;
struct TYPE_5__ {TYPE_1__ md; } ;


 int vm_memattr_to_pte2 (int ) ;

__attribute__((used)) static inline uint32_t
vm_page_pte2_attr(vm_page_t m)
{

 return (vm_memattr_to_pte2(m->md.pat_mode));
}
