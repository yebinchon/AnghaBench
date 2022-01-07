
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int f_idx; } ;
typedef TYPE_1__ fuid_domain_t ;


 int AVL_CMP (int ,int ) ;

__attribute__((used)) static int
idx_compare(const void *arg1, const void *arg2)
{
 const fuid_domain_t *node1 = (const fuid_domain_t *)arg1;
 const fuid_domain_t *node2 = (const fuid_domain_t *)arg2;

 return (AVL_CMP(node1->f_idx, node2->f_idx));
}
