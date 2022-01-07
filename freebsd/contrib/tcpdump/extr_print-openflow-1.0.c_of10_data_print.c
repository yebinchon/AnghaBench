
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,scalar_t__ const) ;
 int hex_and_ascii_print (TYPE_1__*,char*,int const*,scalar_t__ const) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_data_print(netdissect_options *ndo,
                const u_char *cp, const u_char *ep, const u_int len)
{
 if (len == 0)
  return cp;

 ND_PRINT((ndo, "\n\t data (%u octets)", len));
 ND_TCHECK2(*cp, len);
 if (ndo->ndo_vflag >= 2)
  hex_and_ascii_print(ndo, "\n\t  ", cp, len);
 return cp + len;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
