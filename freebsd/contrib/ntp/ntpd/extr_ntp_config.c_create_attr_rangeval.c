
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int first; int last; } ;
struct TYPE_7__ {TYPE_1__ r; } ;
struct TYPE_8__ {int attr; int type; TYPE_2__ value; } ;
typedef TYPE_3__ attr_val ;


 int T_Intrange ;
 TYPE_3__* emalloc_zero (int) ;

attr_val *
create_attr_rangeval(
 int attr,
 int first,
 int last
 )
{
 attr_val *my_val;

 my_val = emalloc_zero(sizeof(*my_val));
 my_val->attr = attr;
 my_val->value.r.first = first;
 my_val->value.r.last = last;
 my_val->type = T_Intrange;

 return my_val;
}
