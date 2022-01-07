
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_short ;
struct hnamemem {int addr; char const* name; struct hnamemem* nxt; } ;
struct TYPE_5__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;
typedef int buf ;


 int HASHNAMESIZE ;
 struct hnamemem* newhnamemem (TYPE_1__*) ;
 int snprintf (char*,int,char*,int) ;
 char const* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 struct hnamemem* uporttable ;

const char *
udpport_string(netdissect_options *ndo, register u_short port)
{
 register struct hnamemem *tp;
 register uint32_t i = port;
 char buf[sizeof("00000")];

 for (tp = &uporttable[i & (HASHNAMESIZE-1)]; tp->nxt; tp = tp->nxt)
  if (tp->addr == i)
   return (tp->name);

 tp->addr = i;
 tp->nxt = newhnamemem(ndo);

 (void)snprintf(buf, sizeof(buf), "%u", i);
 tp->name = strdup(buf);
 if (tp->name == ((void*)0))
  (*ndo->ndo_error)(ndo, "udpport_string: strdup(buf)");
 return (tp->name);
}
