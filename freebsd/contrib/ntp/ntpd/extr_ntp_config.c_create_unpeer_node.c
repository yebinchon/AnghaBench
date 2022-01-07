
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* addr; scalar_t__ assocID; } ;
typedef TYPE_1__ unpeer_node ;
typedef int u_long ;
typedef int u_char ;
typedef scalar_t__ associd_t ;
struct TYPE_8__ {scalar_t__ address; } ;
typedef TYPE_2__ address_node ;


 int ASSOCID_MAX ;
 int destroy_address_node (TYPE_2__*) ;
 TYPE_1__* emalloc_zero (int) ;
 scalar_t__ isdigit (int const) ;

unpeer_node *
create_unpeer_node(
 address_node *addr
 )
{
 unpeer_node * my_node;
 u_long u;
 const u_char * pch;

 my_node = emalloc_zero(sizeof(*my_node));






 for (u = 0, pch = (u_char*)addr->address; isdigit(*pch); ++pch) {

  u = (10 * u + *pch - '0') | (u & 0xFF000000u);
 }

 if (!*pch && u <= ASSOCID_MAX) {
  my_node->assocID = (associd_t)u;
  my_node->addr = ((void*)0);
  destroy_address_node(addr);
 } else {
  my_node->assocID = 0;
  my_node->addr = addr;
 }

 return my_node;
}
