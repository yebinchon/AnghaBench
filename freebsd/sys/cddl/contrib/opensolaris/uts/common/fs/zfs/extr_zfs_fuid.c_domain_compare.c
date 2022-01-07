
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* f_ksid; } ;
typedef TYPE_2__ fuid_domain_t ;
struct TYPE_3__ {int kd_name; } ;


 int AVL_ISIGN (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
domain_compare(const void *arg1, const void *arg2)
{
 const fuid_domain_t *node1 = (const fuid_domain_t *)arg1;
 const fuid_domain_t *node2 = (const fuid_domain_t *)arg2;
 int val;

 val = strcmp(node1->f_ksid->kd_name, node2->f_ksid->kd_name);

 return (AVL_ISIGN(val));
}
