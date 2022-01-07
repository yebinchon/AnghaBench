
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_radix_node_t ;


 TYPE_1__* ldns_radix_prev (TYPE_1__*) ;

__attribute__((used)) static void
ldns_radix_self_or_prev(ldns_radix_node_t* node, ldns_radix_node_t** result)
{
 if (node->data) {
  *result = node;
 } else {
  *result = ldns_radix_prev(node);
 }
 return;
}
