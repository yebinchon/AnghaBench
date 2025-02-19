
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_13__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int const) ;
 int OFPSF_REPLY_U ;
 scalar_t__ OFPST_AGGREGATE ;
 scalar_t__ OFPST_DESC ;
 scalar_t__ OFPST_FLOW ;
 scalar_t__ OFPST_PORT ;
 scalar_t__ OFPST_QUEUE ;
 scalar_t__ OFPST_TABLE ;
 scalar_t__ OFPST_VENDOR ;
 int const OF_STATS_REPLY_LEN ;
 int const* of10_aggregate_stats_reply_print (TYPE_1__*,int const*,int const*,int) ;
 int of10_bitmap_print (TYPE_1__*,int ,scalar_t__,int ) ;
 int const* of10_desc_stats_reply_print (TYPE_1__*,int const*,int const*,int) ;
 int const* of10_flow_stats_reply_print (TYPE_1__*,int const*,int const*,int) ;
 int const* of10_port_stats_reply_print (TYPE_1__*,int const*,int const*,int) ;
 int const* of10_queue_stats_reply_print (TYPE_1__*,int const*,int const*,int) ;
 int const* of10_table_stats_reply_print (TYPE_1__*,int const*,int const*,int) ;
 int const* of10_vendor_data_print (TYPE_1__*,int const*,int const*,int) ;
 int ofpsf_reply_bm ;
 int ofpst_str ;
 int tok2str (int ,char*,scalar_t__) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_stats_reply_print(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
 const u_char *cp0 = cp;
 uint16_t type;


 ND_TCHECK2(*cp, 2);
 type = EXTRACT_16BITS(cp);
 ND_PRINT((ndo, "\n\t type %s", tok2str(ofpst_str, "invalid (0x%04x)", type)));
 cp += 2;

 ND_TCHECK2(*cp, 2);
 ND_PRINT((ndo, ", flags 0x%04x", EXTRACT_16BITS(cp)));
 of10_bitmap_print(ndo, ofpsf_reply_bm, EXTRACT_16BITS(cp), OFPSF_REPLY_U);
 cp += 2;

 if (ndo->ndo_vflag > 0) {
  const u_char *(*decoder)(netdissect_options *, const u_char *, const u_char *, u_int) =
   type == OFPST_DESC ? of10_desc_stats_reply_print :
   type == OFPST_FLOW ? of10_flow_stats_reply_print :
   type == OFPST_AGGREGATE ? of10_aggregate_stats_reply_print :
   type == OFPST_TABLE ? of10_table_stats_reply_print :
   type == OFPST_PORT ? of10_port_stats_reply_print :
   type == OFPST_QUEUE ? of10_queue_stats_reply_print :
   type == OFPST_VENDOR ? of10_vendor_data_print :
   ((void*)0);
  if (decoder != ((void*)0))
   return decoder(ndo, cp, ep, len - OF_STATS_REPLY_LEN);
 }
 ND_TCHECK2(*cp0, len);
 return cp0 + len;

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
