
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct local_zones {int lock; int ztree; } ;
struct TYPE_2__ {struct local_zone* key; } ;
struct local_zone {int name; TYPE_1__ node; int namelabs; int namelen; int dclass; } ;


 int LDNS_RR_CLASS_IN ;
 int free (int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*,char const*) ;
 int parse_dname (char const*,int *,int *,int *) ;
 scalar_t__ rbtree_search (int *,TYPE_1__*) ;

__attribute__((used)) static int
lz_exists(struct local_zones* zones, const char* name)
{
 struct local_zone z;
 z.node.key = &z;
 z.dclass = LDNS_RR_CLASS_IN;
 if(!parse_dname(name, &z.name, &z.namelen, &z.namelabs)) {
  log_err("bad name %s", name);
  return 0;
 }
 lock_rw_rdlock(&zones->lock);
 if(rbtree_search(&zones->ztree, &z.node)) {
  lock_rw_unlock(&zones->lock);
  free(z.name);
  return 1;
 }
 lock_rw_unlock(&zones->lock);
 free(z.name);
 return 0;
}
