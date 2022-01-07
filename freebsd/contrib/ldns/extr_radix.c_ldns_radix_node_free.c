
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_4__ {size_t len; struct TYPE_4__* array; scalar_t__ klen; int * key; struct TYPE_4__* str; } ;
typedef TYPE_1__ ldns_radix_node_t ;


 int LDNS_FREE (TYPE_1__*) ;

__attribute__((used)) static void
ldns_radix_node_free(ldns_radix_node_t* node, void* arg)
{
 uint16_t i;
 (void) arg;
 if (!node) {
  return;
 }
 for (i=0; i < node->len; i++) {
  LDNS_FREE(node->array[i].str);
 }
 node->key = ((void*)0);
 node->klen = 0;
 LDNS_FREE(node->array);
 LDNS_FREE(node);
 return;
}
