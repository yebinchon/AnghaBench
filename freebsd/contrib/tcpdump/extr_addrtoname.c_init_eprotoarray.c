
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hnamemem {int addr; struct hnamemem* nxt; scalar_t__ name; } ;
typedef int netdissect_options ;
struct TYPE_2__ {int p; scalar_t__ s; } ;


 int HASHNAMESIZE ;
 TYPE_1__* eproto_db ;
 struct hnamemem* eprototable ;
 int htons (int ) ;
 struct hnamemem* newhnamemem (int *) ;

__attribute__((used)) static void
init_eprotoarray(netdissect_options *ndo)
{
 register int i;
 register struct hnamemem *table;

 for (i = 0; eproto_db[i].s; i++) {
  int j = htons(eproto_db[i].p) & (HASHNAMESIZE-1);
  table = &eprototable[j];
  while (table->name)
   table = table->nxt;
  table->name = eproto_db[i].s;
  table->addr = htons(eproto_db[i].p);
  table->nxt = newhnamemem(ndo);
 }
}
