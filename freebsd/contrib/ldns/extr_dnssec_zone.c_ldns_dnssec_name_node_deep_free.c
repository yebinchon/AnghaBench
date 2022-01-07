
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ ldns_rbnode_t ;
typedef int ldns_dnssec_name ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_dnssec_name_deep_free (int *) ;

__attribute__((used)) static void
ldns_dnssec_name_node_deep_free(ldns_rbnode_t *node, void *arg) {
 (void) arg;
 ldns_dnssec_name_deep_free((ldns_dnssec_name *)node->data);
 LDNS_FREE(node);
}
