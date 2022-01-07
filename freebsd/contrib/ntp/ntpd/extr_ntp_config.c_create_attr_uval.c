
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_5__ {int u; } ;
struct TYPE_6__ {int attr; int type; TYPE_1__ value; } ;
typedef TYPE_2__ attr_val ;


 int T_U_int ;
 TYPE_2__* emalloc_zero (int) ;

attr_val *
create_attr_uval(
 int attr,
 u_int value
 )
{
 attr_val *my_val;

 my_val = emalloc_zero(sizeof(*my_val));
 my_val->attr = attr;
 my_val->value.u = value;
 my_val->type = T_U_int;

 return my_val;
}
