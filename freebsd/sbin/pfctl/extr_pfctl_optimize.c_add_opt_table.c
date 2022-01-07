
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pfctl {int opts; } ;
struct TYPE_5__ {int mask; int addr; } ;
struct TYPE_6__ {TYPE_1__ a; } ;
struct TYPE_7__ {TYPE_2__ v; } ;
struct pf_rule_addr {TYPE_3__ addr; } ;
struct pf_opt_tbl {scalar_t__ pt_rulecount; int pt_name; int pt_nodes; TYPE_4__* pt_buf; } ;
struct node_tinit {int * host; } ;
struct node_host {TYPE_3__ addr; int af; } ;
typedef int sa_family_t ;
typedef int node_host ;
typedef int buf ;
struct TYPE_8__ {int pfrb_type; } ;


 int DEBUG (char*,int ,...) ;
 int PFRB_ADDRS ;
 char* PF_OPT_TABLE_PREFIX ;
 int PF_OPT_VERBOSE ;
 int SIMPLEQ_INIT (int *) ;
 int SIMPLEQ_INSERT_TAIL (int *,struct node_tinit*,int ) ;
 scalar_t__ TABLE_THRESHOLD ;
 scalar_t__ append_addr_host (TYPE_4__*,struct node_host*,int ,int ) ;
 void* calloc (int,int) ;
 int entries ;
 int err (int,char*) ;
 int inet_ntop (int ,int *,char*,int) ;
 int * malloc (int) ;
 int memcpy (int *,struct node_host*,int) ;
 int memset (struct node_host*,int ,int) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int unmask (int *,int ) ;
 int warn (char*) ;

int
add_opt_table(struct pfctl *pf, struct pf_opt_tbl **tbl, sa_family_t af,
    struct pf_rule_addr *addr)
{



 static int tablenum = 0;
 struct node_host node_host;

 if (*tbl == ((void*)0)) {
  if ((*tbl = calloc(1, sizeof(**tbl))) == ((void*)0) ||
      ((*tbl)->pt_buf = calloc(1, sizeof(*(*tbl)->pt_buf))) ==
      ((void*)0))
   err(1, "calloc");
  (*tbl)->pt_buf->pfrb_type = PFRB_ADDRS;
  SIMPLEQ_INIT(&(*tbl)->pt_nodes);


  snprintf((*tbl)->pt_name, sizeof((*tbl)->pt_name), "%s%d",
      PF_OPT_TABLE_PREFIX, tablenum++);
  DEBUG("creating table <%s>", (*tbl)->pt_name);
 }

 memset(&node_host, 0, sizeof(node_host));
 node_host.af = af;
 node_host.addr = addr->addr;







 if (append_addr_host((*tbl)->pt_buf, &node_host, 0, 0)) {
  warn("failed to add host");
  return (1);
 }
 if (pf->opts & PF_OPT_VERBOSE) {
  struct node_tinit *ti;

  if ((ti = calloc(1, sizeof(*ti))) == ((void*)0))
   err(1, "malloc");
  if ((ti->host = malloc(sizeof(*ti->host))) == ((void*)0))
   err(1, "malloc");
  memcpy(ti->host, &node_host, sizeof(*ti->host));
  SIMPLEQ_INSERT_TAIL(&(*tbl)->pt_nodes, ti, entries);
 }

 (*tbl)->pt_rulecount++;
 if ((*tbl)->pt_rulecount == TABLE_THRESHOLD)
  DEBUG("table <%s> now faster than skip steps", (*tbl)->pt_name);

 return (0);
}
