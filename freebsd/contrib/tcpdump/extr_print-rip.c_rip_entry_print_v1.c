
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ u_short ;
struct rip_netinfo {int rip_metric; int rip_dest; int rip_family; int rip_router; int rip_dest_mask; int rip_tag; } ;
typedef int netdissect_options ;


 scalar_t__ BSD_AFNUM_INET ;
 scalar_t__ EXTRACT_16BITS (int *) ;
 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int RIP_ROUTELEN ;
 int bsd_af_values ;
 int ipaddr_string (int *,int *) ;
 int print_unknown_data (int *,int const*,char*,int ) ;
 int tok2str (int ,char*,scalar_t__) ;

__attribute__((used)) static void
rip_entry_print_v1(netdissect_options *ndo,
                   register const struct rip_netinfo *ni)
{
 register u_short family;


 family = EXTRACT_16BITS(&ni->rip_family);
 if (family != BSD_AFNUM_INET && family != 0) {
  ND_PRINT((ndo, "\n\t AFI %s, ", tok2str(bsd_af_values, "Unknown (%u)", family)));
  print_unknown_data(ndo, (const uint8_t *)&ni->rip_family, "\n\t  ", RIP_ROUTELEN);
  return;
 }
 if (EXTRACT_16BITS(&ni->rip_tag) ||
     EXTRACT_32BITS(&ni->rip_dest_mask) ||
     EXTRACT_32BITS(&ni->rip_router)) {

                print_unknown_data(ndo, (const uint8_t *)&ni->rip_family, "\n\t  ", RIP_ROUTELEN);
  return;
 }
 if (family == 0) {
  ND_PRINT((ndo, "\n\t  AFI 0, %s, metric: %u",
   ipaddr_string(ndo, &ni->rip_dest),
   EXTRACT_32BITS(&ni->rip_metric)));
  return;
 }
 ND_PRINT((ndo, "\n\t  %s, metric: %u",
               ipaddr_string(ndo, &ni->rip_dest),
        EXTRACT_32BITS(&ni->rip_metric)));
}
