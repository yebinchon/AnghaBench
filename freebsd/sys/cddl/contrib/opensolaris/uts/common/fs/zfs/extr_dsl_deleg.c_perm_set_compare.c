
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p_setname; } ;
typedef TYPE_1__ perm_set_t ;


 int AVL_ISIGN (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
perm_set_compare(const void *arg1, const void *arg2)
{
 const perm_set_t *node1 = (const perm_set_t *)arg1;
 const perm_set_t *node2 = (const perm_set_t *)arg2;
 int val;

 val = strcmp(node1->p_setname, node2->p_setname);

 return (AVL_ISIGN(val));
}
