
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lot_attr_count; scalar_t__* lot_attrs; } ;
typedef TYPE_1__ sa_lot_t ;
typedef scalar_t__ sa_attr_type_t ;
typedef int boolean_t ;



boolean_t
sa_layout_equal(sa_lot_t *tbf, sa_attr_type_t *attrs, int count)
{
 int i;

 if (count != tbf->lot_attr_count)
  return (1);

 for (i = 0; i != count; i++) {
  if (attrs[i] != tbf->lot_attrs[i])
   return (1);
 }
 return (0);
}
