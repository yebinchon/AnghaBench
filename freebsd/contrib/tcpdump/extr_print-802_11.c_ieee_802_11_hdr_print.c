
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct mgmt_header_t {int duration; } ;
struct meshcntl_t {int flags; int addr6; int addr5; int addr4; int seq; int ttl; } ;
struct TYPE_8__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ CTRL_PS_POLL ;
 int EXTRACT_LE_16BITS (int *) ;
 int EXTRACT_LE_32BITS (int ) ;
 scalar_t__ FC_MORE_DATA (int ) ;
 scalar_t__ FC_MORE_FLAG (int ) ;
 scalar_t__ FC_ORDER (int ) ;
 scalar_t__ FC_POWER_MGMT (int ) ;
 scalar_t__ FC_PROTECTED (int ) ;
 scalar_t__ FC_RETRY (int ) ;
 scalar_t__ FC_SUBTYPE (int ) ;
 int FC_TYPE (int ) ;
 int ND_PRINT (TYPE_1__*) ;



 int ctrl_header_print (TYPE_1__*,int ,int const*) ;
 int data_header_print (TYPE_1__*,int ,int const*) ;
 int etheraddr_string (TYPE_1__*,int ) ;
 int mgmt_header_print (TYPE_1__*,int const*) ;

__attribute__((used)) static void
ieee_802_11_hdr_print(netdissect_options *ndo,
                      uint16_t fc, const u_char *p, u_int hdrlen,
                      u_int meshdrlen)
{
 if (ndo->ndo_vflag) {
  if (FC_MORE_DATA(fc))
   ND_PRINT((ndo, "More Data "));
  if (FC_MORE_FLAG(fc))
   ND_PRINT((ndo, "More Fragments "));
  if (FC_POWER_MGMT(fc))
   ND_PRINT((ndo, "Pwr Mgmt "));
  if (FC_RETRY(fc))
   ND_PRINT((ndo, "Retry "));
  if (FC_ORDER(fc))
   ND_PRINT((ndo, "Strictly Ordered "));
  if (FC_PROTECTED(fc))
   ND_PRINT((ndo, "Protected "));
  if (FC_TYPE(fc) != 130 || FC_SUBTYPE(fc) != CTRL_PS_POLL)
   ND_PRINT((ndo, "%dus ",
       EXTRACT_LE_16BITS(
           &((const struct mgmt_header_t *)p)->duration)));
 }
 if (meshdrlen != 0) {
  const struct meshcntl_t *mc =
      (const struct meshcntl_t *)&p[hdrlen - meshdrlen];
  int ae = mc->flags & 3;

  ND_PRINT((ndo, "MeshData (AE %d TTL %u seq %u", ae, mc->ttl,
      EXTRACT_LE_32BITS(mc->seq)));
  if (ae > 0)
   ND_PRINT((ndo, " A4:%s", etheraddr_string(ndo, mc->addr4)));
  if (ae > 1)
   ND_PRINT((ndo, " A5:%s", etheraddr_string(ndo, mc->addr5)));
  if (ae > 2)
   ND_PRINT((ndo, " A6:%s", etheraddr_string(ndo, mc->addr6)));
  ND_PRINT((ndo, ") "));
 }

 switch (FC_TYPE(fc)) {
 case 128:
  mgmt_header_print(ndo, p);
  break;
 case 130:
  ctrl_header_print(ndo, fc, p);
  break;
 case 129:
  data_header_print(ndo, fc, p);
  break;
 default:
  break;
 }
}
