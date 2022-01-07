
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rbnode_t ;


 int LDNS_FREE (int *) ;

__attribute__((used)) static void
ldns_hashed_names_node_free(ldns_rbnode_t *node, void *arg) {
 (void) arg;
 LDNS_FREE(node);
}
