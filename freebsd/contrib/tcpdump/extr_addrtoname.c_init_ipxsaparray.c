
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnamemem {int addr; struct hnamemem* nxt; int * name; } ;
typedef int netdissect_options ;
struct TYPE_2__ {int v; int * s; } ;


 int HASHNAMESIZE ;
 int htons (int ) ;
 TYPE_1__* ipxsap_db ;
 struct hnamemem* ipxsaptable ;
 struct hnamemem* newhnamemem (int *) ;

__attribute__((used)) static void
init_ipxsaparray(netdissect_options *ndo)
{
 register int i;
 register struct hnamemem *table;

 for (i = 0; ipxsap_db[i].s != ((void*)0); i++) {
  int j = htons(ipxsap_db[i].v) & (HASHNAMESIZE-1);
  table = &ipxsaptable[j];
  while (table->name)
   table = table->nxt;
  table->name = ipxsap_db[i].s;
  table->addr = htons(ipxsap_db[i].v);
  table->nxt = newhnamemem(ndo);
 }
}
