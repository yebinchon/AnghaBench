
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ldns_rdf ;
struct TYPE_4__ {scalar_t__ key; } ;
typedef TYPE_1__ ldns_rbnode_t ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_rdf_deep_free (int *) ;

__attribute__((used)) static void
compression_node_free(ldns_rbnode_t *node, void *arg)
{
 (void)arg;
 ldns_rdf_deep_free((ldns_rdf *)node->key);
 LDNS_FREE(node);
}
