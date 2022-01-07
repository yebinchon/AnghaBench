
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int u_int ;
typedef int u_char ;
struct bsnamemem {char const* bs_name; } ;
struct TYPE_7__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 unsigned int const ETHER_ADDR_LEN ;
 unsigned int const LINKADDR_ETHER ;
 unsigned int const LINKADDR_FRELAY ;
 char const* etheraddr_string (TYPE_1__*,int const*) ;
 void** hex ;
 struct bsnamemem* lookup_bytestring (TYPE_1__*,int const*,unsigned int const) ;
 scalar_t__ malloc (unsigned int const) ;
 char const* q922_string (TYPE_1__*,int const*,unsigned int const) ;
 int stub1 (TYPE_1__*,char*) ;

const char *
linkaddr_string(netdissect_options *ndo, const u_char *ep,
  const unsigned int type, const unsigned int len)
{
 register u_int i;
 register char *cp;
 register struct bsnamemem *tp;

 if (len == 0)
  return ("<empty>");

 if (type == LINKADDR_ETHER && len == ETHER_ADDR_LEN)
  return (etheraddr_string(ndo, ep));

 if (type == LINKADDR_FRELAY)
  return (q922_string(ndo, ep, len));

 tp = lookup_bytestring(ndo, ep, len);
 if (tp->bs_name)
  return (tp->bs_name);

 tp->bs_name = cp = (char *)malloc(len*3);
 if (tp->bs_name == ((void*)0))
  (*ndo->ndo_error)(ndo, "linkaddr_string: malloc");
 *cp++ = hex[*ep >> 4];
 *cp++ = hex[*ep++ & 0xf];
 for (i = len-1; i > 0 ; --i) {
  *cp++ = ':';
  *cp++ = hex[*ep >> 4];
  *cp++ = hex[*ep++ & 0xf];
 }
 *cp = '\0';
 return (tp->bs_name);
}
