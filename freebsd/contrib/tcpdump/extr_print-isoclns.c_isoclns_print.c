
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
struct TYPE_12__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST (int const) ;
 int clnp_print (TYPE_1__*,int const*,int) ;
 int esis_print (TYPE_1__*,int const*,int) ;
 int ip6_print (TYPE_1__*,int const*,int ) ;
 int ip_print (TYPE_1__*,int const*,int ) ;
 int isis_print (TYPE_1__*,int const*,int) ;
 int nlpid_values ;
 int ppp_print (TYPE_1__*,int const*,int ) ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int q933_print (TYPE_1__*,int const*,int ) ;
 int tok2str (int ,char*,int const) ;

void
isoclns_print(netdissect_options *ndo, const uint8_t *p, u_int length)
{
 if (!ND_TTEST(*p)) {
  ND_PRINT((ndo, "|OSI"));
  return;
 }

 if (ndo->ndo_eflag)
  ND_PRINT((ndo, "OSI NLPID %s (0x%02x): ", tok2str(nlpid_values, "Unknown", *p), *p));

 switch (*p) {

 case 135:
  if (!clnp_print(ndo, p, length))
   print_unknown_data(ndo, p, "\n\t", length);
  break;

 case 134:
  esis_print(ndo, p, length);
  return;

 case 131:
  if (!isis_print(ndo, p, length))
   print_unknown_data(ndo, p, "\n\t", length);
  break;

 case 130:
  ND_PRINT((ndo, "%slength: %u", ndo->ndo_eflag ? "" : ", ", length));
  break;

 case 128:
  q933_print(ndo, p + 1, length - 1);
  break;

 case 133:
  ip_print(ndo, p + 1, length - 1);
  break;

 case 132:
  ip6_print(ndo, p + 1, length - 1);
  break;

 case 129:
  ppp_print(ndo, p + 1, length - 1);
  break;

 default:
  if (!ndo->ndo_eflag)
   ND_PRINT((ndo, "OSI NLPID 0x%02x unknown", *p));
  ND_PRINT((ndo, "%slength: %u", ndo->ndo_eflag ? "" : ", ", length));
  if (length > 1)
   print_unknown_data(ndo, p, "\n\t", length);
  break;
 }
}
