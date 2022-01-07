
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_rr ;
struct TYPE_4__ {size_t parent_count; int ** parent_signature; int * parent_status; struct TYPE_4__** parents; } ;
typedef TYPE_1__ ldns_dnssec_trust_tree ;


 size_t LDNS_DNSSEC_TRUST_TREE_MAX_PARENTS ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;

ldns_status
ldns_dnssec_trust_tree_add_parent(ldns_dnssec_trust_tree *tree,
                                  const ldns_dnssec_trust_tree *parent,
                                  const ldns_rr *signature,
                                  const ldns_status parent_status)
{
 if (tree
     && parent
     && tree->parent_count < LDNS_DNSSEC_TRUST_TREE_MAX_PARENTS) {






  tree->parents[tree->parent_count] =
   (ldns_dnssec_trust_tree *) parent;
  tree->parent_status[tree->parent_count] = parent_status;
  tree->parent_signature[tree->parent_count] = (ldns_rr *) signature;
  tree->parent_count++;
  return LDNS_STATUS_OK;
 } else {
  return LDNS_STATUS_ERR;
 }
}
