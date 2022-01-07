
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bgp {int bgp_type; } ;
typedef int netdissect_options ;






 int BGP_SIZE ;

 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int bgp_msg_values ;
 int bgp_notification_print (int *,int const*,int) ;
 int bgp_open_print (int *,int const*,int) ;
 int bgp_route_refresh_print (int *,int const*,int) ;
 int bgp_update_print (int *,int const*,int) ;
 int memcpy (struct bgp*,int const*,int) ;
 int print_unknown_data (int *,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
bgp_header_print(netdissect_options *ndo,
                 const u_char *dat, int length)
{
 struct bgp bgp;

 ND_TCHECK2(dat[0], BGP_SIZE);
 memcpy(&bgp, dat, BGP_SIZE);
 ND_PRINT((ndo, "\n\t%s Message (%u), length: %u",
               tok2str(bgp_msg_values, "Unknown", bgp.bgp_type),
               bgp.bgp_type,
               length));

 switch (bgp.bgp_type) {
 case 130:
  bgp_open_print(ndo, dat, length);
  break;
 case 128:
  bgp_update_print(ndo, dat, length);
  break;
 case 131:
  bgp_notification_print(ndo, dat, length);
  break;
        case 132:
                break;
        case 129:
                bgp_route_refresh_print(ndo, dat, length);
                break;
        default:

                ND_TCHECK2(*dat, length);
                ND_PRINT((ndo, "\n\t  no Message %u decoder", bgp.bgp_type));
                print_unknown_data(ndo, dat, "\n\t  ", length);
                break;
 }
 return 1;
trunc:
 ND_PRINT((ndo, "[|BGP]"));
 return 0;
}
