
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct iter_priv {int a; int region; } ;
struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* private_address; } ;
struct addr_tree_node {int dummy; } ;
typedef int socklen_t ;


 int UNBOUND_DNS_PORT ;
 int VERB_QUERY ;
 int addr_tree_insert (int *,struct addr_tree_node*,struct sockaddr_storage*,int ,int) ;
 int log_assert (int ) ;
 int log_err (char*,...) ;
 int netblockstrtoaddr (int ,int ,struct sockaddr_storage*,int *,int*) ;
 scalar_t__ regional_alloc (int ,int) ;
 int verbose (int ,char*,int ) ;

__attribute__((used)) static int read_addrs(struct iter_priv* priv, struct config_file* cfg)
{

 struct config_strlist* p;
 struct addr_tree_node* n;
 struct sockaddr_storage addr;
 int net;
 socklen_t addrlen;

 for(p = cfg->private_address; p; p = p->next) {
  log_assert(p->str);
  if(!netblockstrtoaddr(p->str, UNBOUND_DNS_PORT, &addr,
   &addrlen, &net)) {
   log_err("cannot parse private-address: %s", p->str);
   return 0;
  }
  n = (struct addr_tree_node*)regional_alloc(priv->region,
   sizeof(*n));
  if(!n) {
   log_err("out of memory");
   return 0;
  }
  if(!addr_tree_insert(&priv->a, n, &addr, addrlen, net)) {
   verbose(VERB_QUERY, "ignoring duplicate "
    "private-address: %s", p->str);
  }
 }
 return 1;
}
