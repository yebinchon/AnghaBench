
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


 int HASHNAMESIZE ;
 int NTOHS (int) ;
 void** hex ;
 struct hnamemem* ipxsaptable ;
 struct hnamemem* newhnamemem (TYPE_1__*) ;
 char const* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;

const char *
ipxsap_string(netdissect_options *ndo, u_short port)
{
 register char *cp;
 register struct hnamemem *tp;
 register uint32_t i = port;
 char buf[sizeof("0000")];

 for (tp = &ipxsaptable[i & (HASHNAMESIZE-1)]; tp->nxt; tp = tp->nxt)
  if (tp->addr == i)
   return (tp->name);

 tp->addr = i;
 tp->nxt = newhnamemem(ndo);

 cp = buf;
 NTOHS(port);
 *cp++ = hex[port >> 12 & 0xf];
 *cp++ = hex[port >> 8 & 0xf];
 *cp++ = hex[port >> 4 & 0xf];
 *cp++ = hex[port & 0xf];
 *cp++ = '\0';
 tp->name = strdup(buf);
 if (tp->name == ((void*)0))
  (*ndo->ndo_error)(ndo, "ipxsap_string: strdup(buf)");
 return (tp->name);
}
