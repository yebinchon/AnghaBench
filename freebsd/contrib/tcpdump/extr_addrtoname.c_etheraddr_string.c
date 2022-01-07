
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct ether_addr {int dummy; } ;
struct enamemem {char const* e_name; } ;
struct TYPE_6__ {int (* ndo_error ) (TYPE_1__*,char*) ;int ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;


 int BUFSIZE ;
 int EXTRACT_24BITS (int const*) ;
 scalar_t__ ether_ntohost (char*,struct ether_addr const*) ;
 void** hex ;
 struct enamemem* lookup_emem (TYPE_1__*,int const*) ;
 int oui_values ;
 int snprintf (char*,int,char*,char*) ;
 void* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 char* tok2str (int ,char*,int) ;

const char *
etheraddr_string(netdissect_options *ndo, register const u_char *ep)
{
 register int i;
 register char *cp;
 register struct enamemem *tp;
 int oui;
 char buf[BUFSIZE];

 tp = lookup_emem(ndo, ep);
 if (tp->e_name)
  return (tp->e_name);
 cp = buf;
 oui = EXTRACT_24BITS(ep);
 *cp++ = hex[*ep >> 4 ];
 *cp++ = hex[*ep++ & 0xf];
 for (i = 5; --i >= 0;) {
  *cp++ = ':';
  *cp++ = hex[*ep >> 4 ];
  *cp++ = hex[*ep++ & 0xf];
 }

 if (!ndo->ndo_nflag) {
  snprintf(cp, BUFSIZE - (2 + 5*3), " (oui %s)",
      tok2str(oui_values, "Unknown", oui));
 } else
  *cp = '\0';
 tp->e_name = strdup(buf);
 if (tp->e_name == ((void*)0))
  (*ndo->ndo_error)(ndo, "etheraddr_string: strdup(buf)");
 return (tp->e_name);
}
