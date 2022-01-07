
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct netconfig {scalar_t__ nc_semantics; int nc_protofmly; int nc_proto; } ;
struct netbuf {int dummy; } ;
typedef TYPE_1__* rpcb_entry_list_ptr ;
struct TYPE_5__ {scalar_t__ r_nc_semantics; scalar_t__* r_maddr; int r_nc_protofmly; int r_nc_proto; } ;
typedef TYPE_2__ rpcb_entry ;
struct TYPE_4__ {TYPE_2__ rpcb_entry_map; struct TYPE_4__* rpcb_entry_next; } ;


 int fprintf (int ,char*,...) ;
 int stderr ;
 scalar_t__ strcmp (int ,int ) ;
 struct netbuf* uaddr2taddr (struct netconfig const*,scalar_t__*) ;

__attribute__((used)) static struct netbuf *
got_entry(rpcb_entry_list_ptr relp, const struct netconfig *nconf)
{
 struct netbuf *na = ((void*)0);
 rpcb_entry_list_ptr sp;
 rpcb_entry *rmap;

 for (sp = relp; sp != ((void*)0); sp = sp->rpcb_entry_next) {
  rmap = &sp->rpcb_entry_map;
  if ((strcmp(nconf->nc_proto, rmap->r_nc_proto) == 0) &&
      (strcmp(nconf->nc_protofmly, rmap->r_nc_protofmly) == 0) &&
      (nconf->nc_semantics == rmap->r_nc_semantics) &&
      (rmap->r_maddr != ((void*)0)) && (rmap->r_maddr[0] != 0)) {
   na = uaddr2taddr(nconf, rmap->r_maddr);







   break;
  }
 }
 return (na);
}
