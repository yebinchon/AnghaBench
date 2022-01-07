
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct TYPE_4__ {char* address; scalar_t__ type; } ;
typedef TYPE_1__ address_node ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int REQUIRE (int) ;
 TYPE_1__* emalloc_zero (int) ;

address_node *
create_address_node(
 char * addr,
 int type
 )
{
 address_node *my_node;

 REQUIRE(((void*)0) != addr);
 REQUIRE(AF_INET == type || AF_INET6 == type || AF_UNSPEC == type);
 my_node = emalloc_zero(sizeof(*my_node));
 my_node->address = addr;
 my_node->type = (u_short)type;

 return my_node;
}
