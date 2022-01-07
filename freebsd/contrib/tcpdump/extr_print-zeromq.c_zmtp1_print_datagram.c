
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int * min (int ,int const*) ;
 int * zmtp1_print_frame (TYPE_1__*,int const*,int const*) ;
 int * zmtp1_print_intermediate_part (TYPE_1__*,int const*,int const) ;

void
zmtp1_print_datagram(netdissect_options *ndo, const u_char *cp, const u_int len)
{
 const u_char *ep = min(ndo->ndo_snapend, cp + len);

 cp = zmtp1_print_intermediate_part(ndo, cp, len);
 while (cp < ep)
  cp = zmtp1_print_frame(ndo, cp, ep);
}
