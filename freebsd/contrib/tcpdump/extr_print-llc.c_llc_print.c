
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct lladdr_info {int addr; int (* addr_string ) (TYPE_1__*,int ) ;} ;
struct TYPE_14__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_LE_16BITS (scalar_t__ const*) ;
 int LLCSAP_8021D ;
 int LLCSAP_GLOBAL ;
 int LLCSAP_IP ;
 int LLCSAP_IPX ;
 int LLCSAP_ISONS ;
 int LLCSAP_NETBEUI ;
 int LLCSAP_SNAP ;
 int LLC_GSAP ;
 int LLC_IG ;
 int LLC_IS_NR (int) ;
 int LLC_IS_POLL ;
 int LLC_I_NS (int) ;
 int LLC_S_CMD (int) ;
 int LLC_S_FMT ;
 int LLC_UI ;
 int LLC_U_CMD (int) ;
 int LLC_U_FMT ;
 int LLC_U_POLL ;
 int LLC_XID ;
 scalar_t__ const LLC_XID_FI ;
 int ND_DEFAULTPRINT (scalar_t__ const*,int) ;
 int ND_PRINT (TYPE_1__*) ;
 int ip_print (TYPE_1__*,scalar_t__ const*,int) ;
 int ipx_print (TYPE_1__*,scalar_t__ const*,int) ;
 int isoclns_print (TYPE_1__*,scalar_t__ const*,int) ;
 int llc_cmd_values ;
 int llc_flag_values ;
 int llc_ig_flag_values ;
 int llc_supervisory_values ;
 int llc_values ;
 int netbeui_print (TYPE_1__*,int,scalar_t__ const*,int) ;
 int snap_print (TYPE_1__*,scalar_t__ const*,int,int,struct lladdr_info const*,struct lladdr_info const*,int) ;
 int stp_print (TYPE_1__*,scalar_t__ const*,int) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int ) ;
 int stub3 (TYPE_1__*,int ) ;
 int stub4 (TYPE_1__*,int ) ;
 int tok2str (int ,char*,int) ;

int
llc_print(netdissect_options *ndo, const u_char *p, u_int length, u_int caplen,
   const struct lladdr_info *src, const struct lladdr_info *dst)
{
 uint8_t dsap_field, dsap, ssap_field, ssap;
 uint16_t control;
 int hdrlen;
 int is_u;

 if (caplen < 3) {
  ND_PRINT((ndo, "[|llc]"));
  ND_DEFAULTPRINT((const u_char *)p, caplen);
  return (caplen);
 }
 if (length < 3) {
  ND_PRINT((ndo, "[|llc]"));
  ND_DEFAULTPRINT((const u_char *)p, caplen);
  return (length);
 }

 dsap_field = *p;
 ssap_field = *(p + 1);







 control = *(p + 2);
 if ((control & LLC_U_FMT) == LLC_U_FMT) {



  is_u = 1;
  hdrlen = 3;
 } else {




  if (caplen < 4) {
   ND_PRINT((ndo, "[|llc]"));
   ND_DEFAULTPRINT((const u_char *)p, caplen);
   return (caplen);
  }
  if (length < 4) {
   ND_PRINT((ndo, "[|llc]"));
   ND_DEFAULTPRINT((const u_char *)p, caplen);
   return (length);
  }




  control = EXTRACT_LE_16BITS(p + 2);
  is_u = 0;
  hdrlen = 4;
 }

 if (ssap_field == LLCSAP_GLOBAL && dsap_field == LLCSAP_GLOBAL) {
            if (ndo->ndo_eflag)
  ND_PRINT((ndo, "IPX 802.3: "));

            ipx_print(ndo, p, length);
            return (0);
 }

 dsap = dsap_field & ~LLC_IG;
 ssap = ssap_field & ~LLC_GSAP;

 if (ndo->ndo_eflag) {
                ND_PRINT((ndo, "LLC, dsap %s (0x%02x) %s, ssap %s (0x%02x) %s",
                       tok2str(llc_values, "Unknown", dsap),
                       dsap,
                       tok2str(llc_ig_flag_values, "Unknown", dsap_field & LLC_IG),
                       tok2str(llc_values, "Unknown", ssap),
                       ssap,
                       tok2str(llc_flag_values, "Unknown", ssap_field & LLC_GSAP)));

  if (is_u) {
   ND_PRINT((ndo, ", ctrl 0x%02x: ", control));
  } else {
   ND_PRINT((ndo, ", ctrl 0x%04x: ", control));
  }
 }




 p += hdrlen;
 length -= hdrlen;
 caplen -= hdrlen;

 if (ssap == LLCSAP_SNAP && dsap == LLCSAP_SNAP
     && control == LLC_UI) {





  if (!snap_print(ndo, p, length, caplen, src, dst, 2)) {





   return (-(hdrlen + 5));
  } else
   return (hdrlen + 5);
 }

 if (ssap == LLCSAP_8021D && dsap == LLCSAP_8021D &&
     control == LLC_UI) {
  stp_print(ndo, p, length);
  return (hdrlen);
 }

 if (ssap == LLCSAP_IP && dsap == LLCSAP_IP &&
     control == LLC_UI) {






  ip_print(ndo, p, length);
  return (hdrlen);
 }

 if (ssap == LLCSAP_IPX && dsap == LLCSAP_IPX &&
     control == LLC_UI) {





                if (ndo->ndo_eflag)
                        ND_PRINT((ndo, "IPX 802.2: "));

  ipx_print(ndo, p, length);
  return (hdrlen);
 }
 if (ssap == LLCSAP_ISONS && dsap == LLCSAP_ISONS
     && control == LLC_UI) {
  isoclns_print(ndo, p, length);
  return (hdrlen);
 }

 if (!ndo->ndo_eflag) {
  if (ssap == dsap) {
   if (src == ((void*)0) || dst == ((void*)0))
    ND_PRINT((ndo, "%s ", tok2str(llc_values, "Unknown DSAP 0x%02x", dsap)));
   else
    ND_PRINT((ndo, "%s > %s %s ",
      (src->addr_string)(ndo, src->addr),
      (dst->addr_string)(ndo, dst->addr),
      tok2str(llc_values, "Unknown DSAP 0x%02x", dsap)));
  } else {
   if (src == ((void*)0) || dst == ((void*)0))
    ND_PRINT((ndo, "%s > %s ",
                                        tok2str(llc_values, "Unknown SSAP 0x%02x", ssap),
     tok2str(llc_values, "Unknown DSAP 0x%02x", dsap)));
   else
    ND_PRINT((ndo, "%s %s > %s %s ",
     (src->addr_string)(ndo, src->addr),
                                        tok2str(llc_values, "Unknown SSAP 0x%02x", ssap),
     (dst->addr_string)(ndo, dst->addr),
     tok2str(llc_values, "Unknown DSAP 0x%02x", dsap)));
  }
 }

 if (is_u) {
  ND_PRINT((ndo, "Unnumbered, %s, Flags [%s], length %u",
                       tok2str(llc_cmd_values, "%02x", LLC_U_CMD(control)),
                       tok2str(llc_flag_values,"?",(ssap_field & LLC_GSAP) | (control & LLC_U_POLL)),
                       length + hdrlen));

  if ((control & ~LLC_U_POLL) == LLC_XID) {
   if (length == 0) {





    return (hdrlen);
   }
   if (caplen < 1) {
    ND_PRINT((ndo, "[|llc]"));
    if (caplen > 0)
     ND_DEFAULTPRINT((const u_char *)p, caplen);
    return (hdrlen);
   }
   if (*p == LLC_XID_FI) {
    if (caplen < 3 || length < 3) {
     ND_PRINT((ndo, "[|llc]"));
     if (caplen > 0)
      ND_DEFAULTPRINT((const u_char *)p, caplen);
    } else
     ND_PRINT((ndo, ": %02x %02x", p[1], p[2]));
    return (hdrlen);
   }
  }
 } else {
  if ((control & LLC_S_FMT) == LLC_S_FMT) {
   ND_PRINT((ndo, "Supervisory, %s, rcv seq %u, Flags [%s], length %u",
    tok2str(llc_supervisory_values,"?",LLC_S_CMD(control)),
    LLC_IS_NR(control),
    tok2str(llc_flag_values,"?",(ssap_field & LLC_GSAP) | (control & LLC_IS_POLL)),
                                length + hdrlen));
   return (hdrlen);
  } else {
   ND_PRINT((ndo, "Information, send seq %u, rcv seq %u, Flags [%s], length %u",
    LLC_I_NS(control),
    LLC_IS_NR(control),
    tok2str(llc_flag_values,"?",(ssap_field & LLC_GSAP) | (control & LLC_IS_POLL)),
                                length + hdrlen));
  }
 }
 return (-hdrlen);
}
