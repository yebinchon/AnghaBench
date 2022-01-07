
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* key; } ;
struct TYPE_4__ {size_t len; int labs; int dclass; struct domain_limit_data* name; TYPE_1__ node; } ;
struct domain_limit_data {int lim; int below; TYPE_2__ node; } ;
typedef struct domain_limit_data uint8_t ;
struct infra_cache {int domain_limits; } ;


 int LDNS_RR_CLASS_IN ;
 scalar_t__ calloc (int,int) ;
 int dname_count_labels (struct domain_limit_data*) ;
 int free (struct domain_limit_data*) ;
 int log_err (char*,...) ;
 scalar_t__ name_tree_find (int *,struct domain_limit_data*,size_t,int,int ) ;
 int name_tree_insert (int *,TYPE_2__*,struct domain_limit_data*,size_t,int,int ) ;
 struct domain_limit_data* sldns_str2wire_dname (char*,size_t*) ;

__attribute__((used)) static struct domain_limit_data* domain_limit_findcreate(
 struct infra_cache* infra, char* name)
{
 uint8_t* nm;
 int labs;
 size_t nmlen;
 struct domain_limit_data* d;


 nm = sldns_str2wire_dname(name, &nmlen);
 if(!nm) {
  log_err("could not parse %s", name);
  return ((void*)0);
 }
 labs = dname_count_labels(nm);


 d = (struct domain_limit_data*)name_tree_find(&infra->domain_limits,
  nm, nmlen, labs, LDNS_RR_CLASS_IN);
 if(d) {
  free(nm);
  return d;
 }


 d = (struct domain_limit_data*)calloc(1, sizeof(*d));
 if(!d) {
  free(nm);
  return ((void*)0);
 }
 d->node.node.key = &d->node;
 d->node.name = nm;
 d->node.len = nmlen;
 d->node.labs = labs;
 d->node.dclass = LDNS_RR_CLASS_IN;
 d->lim = -1;
 d->below = -1;
 if(!name_tree_insert(&infra->domain_limits, &d->node, nm, nmlen,
  labs, LDNS_RR_CLASS_IN)) {
  log_err("duplicate element in domainlimit tree");
  free(nm);
  free(d);
  return ((void*)0);
 }
 return d;
}
