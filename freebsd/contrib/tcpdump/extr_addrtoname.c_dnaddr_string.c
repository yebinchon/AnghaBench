
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_short ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_6__ {scalar_t__ ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;


 int HASHNAMESIZE ;
 struct hnamemem* dnaddrtable ;
 char const* dnname_string (TYPE_1__*,int) ;
 char const* dnnum_string (TYPE_1__*,int) ;
 struct hnamemem* newhnamemem (TYPE_1__*) ;

const char *
dnaddr_string(netdissect_options *ndo, u_short dnaddr)
{
 register struct hnamemem *tp;

 for (tp = &dnaddrtable[dnaddr & (HASHNAMESIZE-1)]; tp->nxt != ((void*)0);
      tp = tp->nxt)
  if (tp->addr == dnaddr)
   return (tp->name);

 tp->addr = dnaddr;
 tp->nxt = newhnamemem(ndo);
 if (ndo->ndo_nflag)
  tp->name = dnnum_string(ndo, dnaddr);
 else
  tp->name = dnname_string(ndo, dnaddr);

 return(tp->name);
}
