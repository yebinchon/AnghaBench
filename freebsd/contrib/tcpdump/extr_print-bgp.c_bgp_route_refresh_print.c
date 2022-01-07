
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct bgp_route_refresh {int safi; int afi; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int BGP_ROUTE_REFRESH_SIZE ;
 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int af_values ;
 int bgp_safi_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
bgp_route_refresh_print(netdissect_options *ndo,
                        const u_char *pptr, int len)
{
        const struct bgp_route_refresh *bgp_route_refresh_header;

 ND_TCHECK2(pptr[0], BGP_ROUTE_REFRESH_SIZE);


        if (len<BGP_ROUTE_REFRESH_SIZE)
            return;

        bgp_route_refresh_header = (const struct bgp_route_refresh *)pptr;

        ND_PRINT((ndo, "\n\t  AFI %s (%u), SAFI %s (%u)",
               tok2str(af_values,"Unknown",


     EXTRACT_16BITS(&bgp_route_refresh_header->afi)),
               EXTRACT_16BITS(&bgp_route_refresh_header->afi),
               tok2str(bgp_safi_values,"Unknown",
     bgp_route_refresh_header->safi),
               bgp_route_refresh_header->safi));

        if (ndo->ndo_vflag > 1) {
            ND_TCHECK2(*pptr, len);
            print_unknown_data(ndo, pptr, "\n\t  ", len);
        }

        return;
trunc:
 ND_PRINT((ndo, "[|BGP]"));
}
