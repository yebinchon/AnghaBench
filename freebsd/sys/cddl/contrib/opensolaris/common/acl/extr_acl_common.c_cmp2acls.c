
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ a_type; scalar_t__ a_id; scalar_t__ a_perm; } ;
typedef TYPE_1__ aclent_t ;



int
cmp2acls(void *a, void *b)
{
 aclent_t *x = (aclent_t *)a;
 aclent_t *y = (aclent_t *)b;


 if (x->a_type < y->a_type)
  return (-1);
 if (x->a_type > y->a_type)
  return (1);

 if (x->a_id < y->a_id)
  return (-1);
 if (x->a_id > y->a_id)
  return (1);

 if (x->a_perm < y->a_perm)
  return (-1);
 if (x->a_perm > y->a_perm)
  return (1);

 return (0);
}
