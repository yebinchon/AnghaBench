
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
typedef int u_char ;
struct protoidmem {char const* p_name; } ;
struct TYPE_5__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 void** hex ;
 struct protoidmem* lookup_protoid (TYPE_1__*,int const*) ;
 char const* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;

const char *
protoid_string(netdissect_options *ndo, register const u_char *pi)
{
 register u_int i, j;
 register char *cp;
 register struct protoidmem *tp;
 char buf[sizeof("00:00:00:00:00")];

 tp = lookup_protoid(ndo, pi);
 if (tp->p_name)
  return tp->p_name;

 cp = buf;
 if ((j = *pi >> 4) != 0)
  *cp++ = hex[j];
 *cp++ = hex[*pi++ & 0xf];
 for (i = 4; (int)--i >= 0;) {
  *cp++ = ':';
  if ((j = *pi >> 4) != 0)
   *cp++ = hex[j];
  *cp++ = hex[*pi++ & 0xf];
 }
 *cp = '\0';
 tp->p_name = strdup(buf);
 if (tp->p_name == ((void*)0))
  (*ndo->ndo_error)(ndo, "protoid_string: strdup(buf)");
 return (tp->p_name);
}
