
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ capacity; int * array; scalar_t__ len; scalar_t__ offset; } ;
typedef TYPE_1__ ldns_radix_node_t ;


 int LDNS_FREE (int *) ;

__attribute__((used)) static void
ldns_radix_node_array_free(ldns_radix_node_t* node)
{
 node->offset = 0;
 node->len = 0;
 LDNS_FREE(node->array);
 node->array = ((void*)0);
 node->capacity = 0;
 return;
}
