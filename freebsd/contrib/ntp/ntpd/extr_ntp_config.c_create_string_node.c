
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* s; } ;
typedef TYPE_1__ string_node ;


 TYPE_1__* emalloc_zero (int) ;

string_node *
create_string_node(
 char *str
 )
{
 string_node *sn;

 sn = emalloc_zero(sizeof(*sn));
 sn->s = str;

 return sn;
}
