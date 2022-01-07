
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct bsnamemem {char const* bs_name; } ;
struct TYPE_5__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 int BUFSIZE ;
 void** hex ;
 struct bsnamemem* lookup_bytestring (TYPE_1__*,int const*,unsigned int const) ;
 char const* strdup (char*) ;
 int stub1 (TYPE_1__*,char*) ;

const char *
le64addr_string(netdissect_options *ndo, const u_char *ep)
{
 const unsigned int len = 8;
 register u_int i;
 register char *cp;
 register struct bsnamemem *tp;
 char buf[BUFSIZE];

 tp = lookup_bytestring(ndo, ep, len);
 if (tp->bs_name)
  return (tp->bs_name);

 cp = buf;
 for (i = len; i > 0 ; --i) {
  *cp++ = hex[*(ep + i - 1) >> 4];
  *cp++ = hex[*(ep + i - 1) & 0xf];
  *cp++ = ':';
 }
 cp --;

 *cp = '\0';

 tp->bs_name = strdup(buf);
 if (tp->bs_name == ((void*)0))
  (*ndo->ndo_error)(ndo, "le64addr_string: strdup(buf)");

 return (tp->bs_name);
}
