
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_7__ {int len; TYPE_1__* array; } ;
typedef TYPE_2__ ldns_radix_node_t ;
struct TYPE_6__ {int * edge; } ;


 int assert (int) ;
 int ldns_radix_array_reduce (TYPE_2__*) ;
 int ldns_radix_node_array_free (TYPE_2__*) ;

__attribute__((used)) static void
ldns_radix_node_array_free_end(ldns_radix_node_t* node)
{
 uint16_t n = 0;

 while (n < node->len && node->array[node->len-1-n].edge == ((void*)0)) {
  n++;
 }
 if (n == 0) {
  return;
 }
 if (n == node->len) {
  ldns_radix_node_array_free(node);
  return;
 }
 assert(n < node->len);
 node->len -= n;
 ldns_radix_array_reduce(node);
 return;
}
