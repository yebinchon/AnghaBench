
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int match_class; char* if_name; int action; } ;
typedef TYPE_1__ nic_rule_node ;


 int REQUIRE (int) ;
 TYPE_1__* emalloc_zero (int) ;

nic_rule_node *
create_nic_rule_node(
 int match_class,
 char *if_name,
 int action
 )
{
 nic_rule_node *my_node;

 REQUIRE(match_class != 0 || if_name != ((void*)0));

 my_node = emalloc_zero(sizeof(*my_node));
 my_node->match_class = match_class;
 my_node->if_name = if_name;
 my_node->action = action;

 return my_node;
}
