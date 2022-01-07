
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bgp_notification {int const bgpn_major; int const bgpn_minor; } ;
typedef int netdissect_options ;


 int BGP_NOTIFICATION_SIZE ;






 int const BGP_NOTIFY_MINOR_CEASE_MAXPRFX ;
 int const EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int af_values ;
 int bgp_notify_major_values ;
 int bgp_notify_minor_cap_values ;
 int bgp_notify_minor_cease_values ;
 int bgp_notify_minor_fsm_values ;
 int bgp_notify_minor_msg_values ;
 int bgp_notify_minor_open_values ;
 int bgp_notify_minor_update_values ;
 int bgp_safi_values ;
 int memcpy (struct bgp_notification*,int const*,int) ;
 int tok2str (int ,char*,int const) ;

__attribute__((used)) static void
bgp_notification_print(netdissect_options *ndo,
                       const u_char *dat, int length)
{
 struct bgp_notification bgpn;
 const u_char *tptr;

 ND_TCHECK2(dat[0], BGP_NOTIFICATION_SIZE);
 memcpy(&bgpn, dat, BGP_NOTIFICATION_SIZE);


        if (length<BGP_NOTIFICATION_SIZE)
            return;

 ND_PRINT((ndo, ", %s (%u)",
        tok2str(bgp_notify_major_values, "Unknown Error",
     bgpn.bgpn_major),
        bgpn.bgpn_major));

        switch (bgpn.bgpn_major) {

        case 130:
            ND_PRINT((ndo, ", subcode %s (%u)",
     tok2str(bgp_notify_minor_msg_values, "Unknown",
         bgpn.bgpn_minor),
     bgpn.bgpn_minor));
            break;
        case 129:
            ND_PRINT((ndo, ", subcode %s (%u)",
     tok2str(bgp_notify_minor_open_values, "Unknown",
         bgpn.bgpn_minor),
     bgpn.bgpn_minor));
            break;
        case 128:
            ND_PRINT((ndo, ", subcode %s (%u)",
     tok2str(bgp_notify_minor_update_values, "Unknown",
         bgpn.bgpn_minor),
     bgpn.bgpn_minor));
            break;
        case 131:
            ND_PRINT((ndo, " subcode %s (%u)",
     tok2str(bgp_notify_minor_fsm_values, "Unknown",
         bgpn.bgpn_minor),
     bgpn.bgpn_minor));
            break;
        case 133:
            ND_PRINT((ndo, " subcode %s (%u)",
     tok2str(bgp_notify_minor_cap_values, "Unknown",
         bgpn.bgpn_minor),
     bgpn.bgpn_minor));
            break;
        case 132:
            ND_PRINT((ndo, ", subcode %s (%u)",
     tok2str(bgp_notify_minor_cease_values, "Unknown",
         bgpn.bgpn_minor),
     bgpn.bgpn_minor));




     if(bgpn.bgpn_minor == BGP_NOTIFY_MINOR_CEASE_MAXPRFX && length >= BGP_NOTIFICATION_SIZE + 7) {
  tptr = dat + BGP_NOTIFICATION_SIZE;
  ND_TCHECK2(*tptr, 7);
  ND_PRINT((ndo, ", AFI %s (%u), SAFI %s (%u), Max Prefixes: %u",
         tok2str(af_values, "Unknown",
      EXTRACT_16BITS(tptr)),
         EXTRACT_16BITS(tptr),
         tok2str(bgp_safi_values, "Unknown", *(tptr+2)),
         *(tptr+2),
         EXTRACT_32BITS(tptr+3)));
     }
            break;
        default:
            break;
        }

 return;
trunc:
 ND_PRINT((ndo, "[|BGP]"));
}
