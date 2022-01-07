
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct lladdr_info {int addr; void* addr_string; } ;
struct TYPE_10__ {int ndo_suppress_default_print; scalar_t__ ndo_eflag; scalar_t__ ndo_Hflag; int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int DATA_FRAME_IS_NULL (int ) ;
 scalar_t__ DATA_FRAME_IS_QOS (int ) ;
 int EXTRACT_LE_16BITS (int const*) ;
 int FC_PROTECTED (int ) ;
 int FC_SUBTYPE (int ) ;
 int FC_TYPE (int ) ;
 scalar_t__ IEEE802_11_FC_LEN ;
 int ND_DEFAULTPRINT (int const*,scalar_t__) ;
 int ND_PRINT (TYPE_1__*) ;



 int ctrl_body_print (TYPE_1__*,int ,int const*) ;
 void* etheraddr_string ;
 scalar_t__ extract_header_length (TYPE_1__*,int ) ;
 scalar_t__ extract_mesh_header_length (int const*) ;
 int get_data_src_dst_mac (int ,int const*,int *,int *) ;
 int get_mgmt_src_dst_mac (int const*,int *,int *) ;
 int ieee_802_11_hdr_print (TYPE_1__*,int ,int const*,scalar_t__,scalar_t__) ;
 int llc_print (TYPE_1__*,int const*,scalar_t__,scalar_t__,struct lladdr_info*,struct lladdr_info*) ;
 int mgmt_body_print (TYPE_1__*,int ,int ,int const*,scalar_t__) ;
 scalar_t__ roundup2 (scalar_t__,int) ;
 int tstr ;
 int wep_print (TYPE_1__*,int const*) ;

__attribute__((used)) static u_int
ieee802_11_print(netdissect_options *ndo,
                 const u_char *p, u_int length, u_int orig_caplen, int pad,
                 u_int fcslen)
{
 uint16_t fc;
 u_int caplen, hdrlen, meshdrlen;
 struct lladdr_info src, dst;
 int llc_hdrlen;

 caplen = orig_caplen;

 if (length < fcslen) {
  ND_PRINT((ndo, "%s", tstr));
  return caplen;
 }
 length -= fcslen;
 if (caplen > length) {

  fcslen = caplen - length;
  caplen -= fcslen;
  ndo->ndo_snapend -= fcslen;
 }

 if (caplen < IEEE802_11_FC_LEN) {
  ND_PRINT((ndo, "%s", tstr));
  return orig_caplen;
 }

 fc = EXTRACT_LE_16BITS(p);
 hdrlen = extract_header_length(ndo, fc);
 if (hdrlen == 0) {

  return (0);
 }
 if (pad)
  hdrlen = roundup2(hdrlen, 4);
 if (ndo->ndo_Hflag && FC_TYPE(fc) == 129 &&
     DATA_FRAME_IS_QOS(FC_SUBTYPE(fc))) {
  meshdrlen = extract_mesh_header_length(p+hdrlen);
  hdrlen += meshdrlen;
 } else
  meshdrlen = 0;

 if (caplen < hdrlen) {
  ND_PRINT((ndo, "%s", tstr));
  return hdrlen;
 }

 if (ndo->ndo_eflag)
  ieee_802_11_hdr_print(ndo, fc, p, hdrlen, meshdrlen);




 length -= hdrlen;
 caplen -= hdrlen;
 p += hdrlen;

 src.addr_string = etheraddr_string;
 dst.addr_string = etheraddr_string;
 switch (FC_TYPE(fc)) {
 case 128:
  get_mgmt_src_dst_mac(p - hdrlen, &src.addr, &dst.addr);
  if (!mgmt_body_print(ndo, fc, src.addr, p, length)) {
   ND_PRINT((ndo, "%s", tstr));
   return hdrlen;
  }
  break;
 case 130:
  if (!ctrl_body_print(ndo, fc, p - hdrlen)) {
   ND_PRINT((ndo, "%s", tstr));
   return hdrlen;
  }
  break;
 case 129:
  if (DATA_FRAME_IS_NULL(FC_SUBTYPE(fc)))
   return hdrlen;

  if (FC_PROTECTED(fc)) {
   ND_PRINT((ndo, "Data"));
   if (!wep_print(ndo, p)) {
    ND_PRINT((ndo, "%s", tstr));
    return hdrlen;
   }
  } else {
   get_data_src_dst_mac(fc, p - hdrlen, &src.addr, &dst.addr);
   llc_hdrlen = llc_print(ndo, p, length, caplen, &src, &dst);
   if (llc_hdrlen < 0) {




    if (!ndo->ndo_suppress_default_print)
     ND_DEFAULTPRINT(p, caplen);
    llc_hdrlen = -llc_hdrlen;
   }
   hdrlen += llc_hdrlen;
  }
  break;
 default:

  break;
 }

 return hdrlen;
}
