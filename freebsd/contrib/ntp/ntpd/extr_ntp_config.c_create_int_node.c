
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i; } ;
typedef TYPE_1__ int_node ;


 TYPE_1__* emalloc_zero (int) ;

int_node *
create_int_node(
 int val
 )
{
 int_node *i_n;

 i_n = emalloc_zero(sizeof(*i_n));
 i_n->i = val;

 return i_n;
}
