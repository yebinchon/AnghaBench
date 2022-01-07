
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_op_type; } ;
typedef TYPE_1__ vdev_ops_t ;


 scalar_t__ strcmp (int ,char const*) ;
 TYPE_1__** vdev_ops_table ;

__attribute__((used)) static vdev_ops_t *
vdev_getops(const char *type)
{
 vdev_ops_t *ops, **opspp;

 for (opspp = vdev_ops_table; (ops = *opspp) != ((void*)0); opspp++)
  if (strcmp(ops->vdev_op_type, type) == 0)
   break;

 return (ops);
}
