
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* address; } ;
typedef TYPE_1__ address_node ;


 int REQUIRE (int) ;
 int free (TYPE_1__*) ;

void
destroy_address_node(
 address_node *my_node
 )
{
 if (((void*)0) == my_node)
  return;
 REQUIRE(((void*)0) != my_node->address);

 free(my_node->address);
 free(my_node);
}
