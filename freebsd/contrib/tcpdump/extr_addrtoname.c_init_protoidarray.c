
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_char ;
struct protoidmem {int * p_name; } ;
struct protoidlist {int * name; scalar_t__* protoid; } ;
struct TYPE_6__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;
struct TYPE_7__ {scalar_t__ s; int p; } ;


 TYPE_5__* eproto_db ;
 int htons (int ) ;
 struct protoidmem* lookup_protoid (TYPE_1__*,scalar_t__*) ;
 int memcpy (char*,char*,int) ;
 struct protoidlist* protoidlist ;
 int * strdup (scalar_t__) ;
 int stub1 (TYPE_1__*,char*) ;

__attribute__((used)) static void
init_protoidarray(netdissect_options *ndo)
{
 register int i;
 register struct protoidmem *tp;
 const struct protoidlist *pl;
 u_char protoid[5];

 protoid[0] = 0;
 protoid[1] = 0;
 protoid[2] = 0;
 for (i = 0; eproto_db[i].s; i++) {
  u_short etype = htons(eproto_db[i].p);

  memcpy((char *)&protoid[3], (char *)&etype, 2);
  tp = lookup_protoid(ndo, protoid);
  tp->p_name = strdup(eproto_db[i].s);
  if (tp->p_name == ((void*)0))
   (*ndo->ndo_error)(ndo,
       "init_protoidarray: strdup(eproto_db[i].s)");
 }

 for (pl = protoidlist; pl->name != ((void*)0); ++pl) {
  tp = lookup_protoid(ndo, pl->protoid);

  if (tp->p_name != ((void*)0))
   continue;

  tp->p_name = pl->name;
 }
}
