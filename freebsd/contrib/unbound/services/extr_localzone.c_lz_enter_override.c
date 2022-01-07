
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct rbtree_type {int dummy; } ;
struct local_zones {int lock; } ;
struct local_zone_override {int type; } ;
struct local_zone {int lock; struct rbtree_type* override_tree; int region; } ;
struct addr_tree_node {int dummy; } ;
typedef int socklen_t ;
typedef enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
typedef int dname ;


 int LDNS_MAX_DOMAINLEN ;
 int UNBOUND_DNS_PORT ;
 int addr_tree_init (struct rbtree_type*) ;
 int addr_tree_insert (struct rbtree_type*,struct addr_tree_node*,struct sockaddr_storage*,int ,int) ;
 int dname_count_labels (int *) ;
 int local_zone_str2type (char*,int*) ;
 struct local_zone* local_zones_find (struct local_zones*,int *,size_t,int,int ) ;
 int lock_rw_rdlock (int *) ;
 int lock_rw_unlock (int *) ;
 int lock_rw_wrlock (int *) ;
 int log_err (char*,...) ;
 int netblockstrtoaddr (char*,int ,struct sockaddr_storage*,int *,int*) ;
 scalar_t__ regional_alloc_zero (int ,int) ;
 scalar_t__ sldns_str2wire_dname_buf (char*,int *,size_t*) ;

__attribute__((used)) static int
lz_enter_override(struct local_zones* zones, char* zname, char* netblock,
 char* type, uint16_t rr_class)
{
 uint8_t dname[LDNS_MAX_DOMAINLEN+1];
 size_t dname_len = sizeof(dname);
 int dname_labs;
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;
 struct local_zone* z;
 enum localzone_type t;


 if(sldns_str2wire_dname_buf(zname, dname, &dname_len) != 0) {
  log_err("cannot parse zone name in local-zone-override: %s %s",
   zname, netblock);
  return 0;
 }
 dname_labs = dname_count_labels(dname);


 if(!netblockstrtoaddr(netblock, UNBOUND_DNS_PORT, &addr, &addrlen,
  &net)) {
  log_err("cannot parse netblock in local-zone-override: %s %s",
   zname, netblock);
  return 0;
 }


 if(!local_zone_str2type(type, &t)) {
  log_err("cannot parse type in local-zone-override: %s %s %s",
   zname, netblock, type);
  return 0;
 }


 lock_rw_rdlock(&zones->lock);
 z = local_zones_find(zones, dname, dname_len, dname_labs, rr_class);
 if(!z) {
  lock_rw_unlock(&zones->lock);
  log_err("no local-zone for local-zone-override %s", zname);
  return 0;
 }
 lock_rw_wrlock(&z->lock);
 lock_rw_unlock(&zones->lock);


 if(!z->override_tree) {
  z->override_tree = (struct rbtree_type*)regional_alloc_zero(
   z->region, sizeof(*z->override_tree));
  if(!z->override_tree) {
   lock_rw_unlock(&z->lock);
   log_err("out of memory");
   return 0;
  }
  addr_tree_init(z->override_tree);
 }

 if(z->override_tree) {
  struct local_zone_override* n;
  n = (struct local_zone_override*)regional_alloc_zero(
   z->region, sizeof(*n));
  if(!n) {
   lock_rw_unlock(&z->lock);
   log_err("out of memory");
   return 0;
  }
  n->type = t;
  if(!addr_tree_insert(z->override_tree,
   (struct addr_tree_node*)n, &addr, addrlen, net)) {
   lock_rw_unlock(&z->lock);
   log_err("duplicate local-zone-override %s %s",
    zname, netblock);
   return 1;
  }
 }

 lock_rw_unlock(&z->lock);
 return 1;
}
