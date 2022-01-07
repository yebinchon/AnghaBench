
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; TYPE_1__* array; scalar_t__ data; } ;
typedef TYPE_2__ ldns_radix_node_t ;
struct TYPE_5__ {TYPE_2__* edge; } ;



__attribute__((used)) static ldns_radix_node_t*
ldns_radix_last_in_subtree(ldns_radix_node_t* node)
{
 int i;

 for (i=(int)(node->len)-1; i >= 0; i--) {
  if (node->array[i].edge) {

   if (node->array[i].edge->len > 0) {
    ldns_radix_node_t* last =
     ldns_radix_last_in_subtree(
     node->array[i].edge);
    if (last) {
     return last;
    }
   }

   if (node->array[i].edge->data) {
    return node->array[i].edge;
   }
  }
 }
 return ((void*)0);
}
