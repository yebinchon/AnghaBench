
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ uqn_id; } ;
typedef TYPE_1__ userquota_node_t ;



__attribute__((used)) static int
userquota_compare(const void *l, const void *r)
{
 const userquota_node_t *luqn = l;
 const userquota_node_t *ruqn = r;

 if (luqn->uqn_id < ruqn->uqn_id)
  return (-1);
 if (luqn->uqn_id > ruqn->uqn_id)
  return (1);
 return (0);
}
