
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct auth_zone {int data; } ;
struct TYPE_2__ {struct auth_data* key; } ;
struct auth_data {size_t namelen; struct auth_data* name; TYPE_1__ node; int namelabs; } ;


 int dname_count_labels (int *) ;
 int free (struct auth_data*) ;
 int log_warn (char*) ;
 scalar_t__ malloc (int) ;
 struct auth_data* memdup (int *,size_t) ;
 int memset (struct auth_data*,int ,int) ;
 int rbtree_insert (int *,TYPE_1__*) ;

__attribute__((used)) static struct auth_data*
az_domain_create(struct auth_zone* z, uint8_t* nm, size_t nmlen)
{
 struct auth_data* n = (struct auth_data*)malloc(sizeof(*n));
 if(!n) return ((void*)0);
 memset(n, 0, sizeof(*n));
 n->node.key = n;
 n->name = memdup(nm, nmlen);
 if(!n->name) {
  free(n);
  return ((void*)0);
 }
 n->namelen = nmlen;
 n->namelabs = dname_count_labels(nm);
 if(!rbtree_insert(&z->data, &n->node)) {
  log_warn("duplicate auth domain name");
  free(n->name);
  free(n);
  return ((void*)0);
 }
 return n;
}
