
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zones {int xtree; } ;
struct auth_zone {int dummy; } ;
struct auth_xfer {int node; } ;


 struct auth_xfer* auth_xfer_new (struct auth_zone*) ;
 int log_err (char*) ;
 int rbtree_insert (int *,int *) ;

struct auth_xfer*
auth_xfer_create(struct auth_zones* az, struct auth_zone* z)
{
 struct auth_xfer* xfr;


 xfr = auth_xfer_new(z);
 if(!xfr) {
  log_err("malloc failure");
  return ((void*)0);
 }

 (void)rbtree_insert(&az->xtree, &xfr->node);
 return xfr;
}
